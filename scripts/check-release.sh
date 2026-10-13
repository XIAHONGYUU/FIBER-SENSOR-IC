#!/usr/bin/env bash
# Checks the public bootstrap repository for required files and obvious leakage.
# Run: bash scripts/check-release.sh
# Needs: bash, rg, find, git (optional).

set -euo pipefail

repo_dir="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
cd "$repo_dir"

required=(
  README.md
  ROADMAP.md
  CONTRIBUTING.md
  DISCLAIMER.md
  LICENSE
  LICENSE-CODE
  CITATION.cff
  PUBLICATION_GATE.md
  THIRD_PARTY_NOTICES.md
  docs/research-question.md
  docs/mechanism-options.md
  docs/three-layer-roadmap.md
  docs/initial-signal-chain.md
  docs/maturity-matrix.md
  docs/glossary-and-mechanisms.md
  docs/evidence-boundaries.md
  evidence/evidence-ledger.csv
  evidence/industry-landscape.csv
  evidence/starter-paper-cards.md
  site/index.html
  .github/workflows/pages.yml
)

for path in "${required[@]}"; do
  [[ -f "$path" ]] || { echo "FAIL: missing $path" >&2; exit 1; }
done

paper_count="$(awk 'END { print NR - 1 }' evidence/evidence-ledger.csv)"
industry_count="$(awk 'END { print NR - 1 }' evidence/industry-landscape.csv)"
[[ "$paper_count" -ge 30 ]] || { echo "FAIL: expected at least 30 paper records, found $paper_count" >&2; exit 1; }
[[ "$industry_count" -ge 5 ]] || { echo "FAIL: expected at least 5 industry records, found $industry_count" >&2; exit 1; }

if rg -n '/home/|/mnt/c|C:\\Users|CURRENT_TASK\.md|state/checkpoints|resume-workspace' \
  README.md ROADMAP.md CONTRIBUTING.md DISCLAIMER.md PUBLICATION_GATE.md \
  THIRD_PARTY_NOTICES.md docs evidence site .github; then
  echo "FAIL: private workspace path found" >&2
  exit 1
fi

if rg -n --glob '!scripts/check-release.sh' \
  'TODO_SECRET|PLACEHOLDER_TOKEN|BEGIN (RSA|OPENSSH) PRIVATE KEY' .; then
  echo "FAIL: credential-like placeholder found" >&2
  exit 1
fi

if find . -type f -size +25M -print -quit | grep -q .; then
  echo "FAIL: file larger than 25 MiB" >&2
  exit 1
fi

if git rev-parse --is-inside-work-tree >/dev/null 2>&1; then
  git diff --check
fi

echo "PASS: public bootstrap checks"
