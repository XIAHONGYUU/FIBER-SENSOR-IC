# FIBER-SENSOR-IC

将光纤传感与集成电路深度融合：从集成制造、传感原理与封装测试三个角度，研究可验证、可校准、可扩展的光电混合集成传感系统。

> **状态：研究启动稿。** 本仓库整理公开论文与工程问题，不代表已经完成芯片、传感器、流片、封装或产业验证。

## 已确认的技术主线

- **验证基线：普通 FBG。** 用成熟的温度、应变与振动传感机制建立可复核的解调链路。
- **主要融合创新：TFBG 折射率传感。** 研究能否用集成光子滤波、光电探测和 CMOS 读出减少对高分辨率光谱仪的依赖。
- **核心候选架构：CPO 黑盒电学指纹。** 用可控电输入、功能化光纤和连续电学输出研究传感状态反演；当前为待专家评审和实验验证的作者构想。
- **远期扩展：DAS 与感知通信融合。** 讨论分布式传感、通信资源复用和光互连系统监测，不把远期路线写成当前成果。

## 核心问题

光纤传感已经拥有成熟器件和工业解调仪，但“产业化”不等于“芯片化”。本仓库关注的是：

1. 光纤敏感元件怎样与硅光、MEMS、CMOS 和封装平台形成清晰的制造边界；
2. 波长、相位、强度或光谱形状怎样被转换为少量、稳定、可校准的电信号；
3. 光源、滤波、探测、模拟前端、ADC、数字解调和温漂补偿能否共同设计；
4. 光纤传感能否用于先进封装的温度、应变、耦合漂移和可靠性监测；
5. 哪些功能已经被论文或产品证明，哪些仍只是研究假设。

## 建议阅读顺序

1. [`docs/research-question.md`](docs/research-question.md)：研究对象与“深度融合”的定义。
2. [`docs/three-route-research-map.md`](docs/three-route-research-map.md)：工艺平台、光电读出、封装与通信应用三条正交路线总图。
3. [`docs/r2-route-1-process-platform-draft.md`](docs/r2-route-1-process-platform-draft.md)：路线一，光纤微纳加工、功能化、耦合与封装工艺试片。
4. [`docs/r2-route-2-signal-chain-budget-draft.md`](docs/r2-route-2-signal-chain-budget-draft.md)：路线二，专用 PIC 与通信黑盒读出、误差预算及选择门。
5. [`docs/r2-route-3-applications-screening-draft.md`](docs/r2-route-3-applications-screening-draft.md)：路线三，封装测试与光通信应用场景筛选。
6. [`docs/cpo-black-box-sensing-concept.md`](docs/cpo-black-box-sensing-concept.md)：CPO 黑盒电学指纹连续传感专家讨论稿。
7. [`docs/mechanism-options.md`](docs/mechanism-options.md)：为什么选择 FBG、TFBG 和 DAS 的三级结构。
8. [`docs/three-layer-roadmap.md`](docs/three-layer-roadmap.md)：集成制造、传感原理、封装测试三层路线。
9. [`docs/initial-signal-chain.md`](docs/initial-signal-chain.md)：首版光学—电学信号链与预算字段。
10. [`docs/maturity-matrix.md`](docs/maturity-matrix.md)：元件、仪器、PIC、电子协同与量产封装的成熟度分层。
11. [`docs/glossary-and-mechanisms.md`](docs/glossary-and-mechanisms.md)：统一术语、机制与指标口径。
12. [`evidence/starter-paper-cards.md`](evidence/starter-paper-cards.md)：37 篇论文的阶段性证据卡。
13. [`evidence/industry-landscape.csv`](evidence/industry-landscape.csv)：11 条官方产业产品、框架和接口证据。
14. [`docs/evidence-boundaries.md`](docs/evidence-boundaries.md)：事实、推导与待验证问题的边界。
15. [`ROADMAP.md`](ROADMAP.md)：后续可验收里程碑。

## 在线页面

GitHub Pages 发布源位于 `site/`，在线页面位于：

`https://xiahongyuu.github.io/FIBER-SENSOR-IC/`

## 本地检查

```bash
bash scripts/check-release.sh
```

检查内容包括必需文件、内部路径、敏感占位词、超大文件和 Git 文本错误。它不能代替论文核对、知识产权审查或人工公开边界判断。

## 参与方式

- 可复现错误、失效链接和构建问题：提交 Issue；
- 开放式技术路线、论文补充和实验设计：使用 Discussions；
- 新增主张时必须同时补充一级来源或明确标记为研究假设。

## 许可

原创研究文字和作者图形采用 [CC BY 4.0](LICENSE)；构建脚本采用 [MIT License](LICENSE-CODE)。第三方论文、图片和数据不因进入引用表而改变原许可，详见 [`THIRD_PARTY_NOTICES.md`](THIRD_PARTY_NOTICES.md)。
