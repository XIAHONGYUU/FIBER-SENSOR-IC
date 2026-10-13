# FIBER-SENSOR-IC

将光纤传感与集成电路深度融合：从集成制造、传感原理与封装测试三个角度，研究可验证、可校准、可扩展的光电混合集成传感系统。

> **状态：研究启动稿。** 本仓库整理公开论文与工程问题，不代表已经完成芯片、传感器、流片、封装或产业验证。

## 已确认的技术主线

- **验证基线：普通 FBG。** 用成熟的温度、应变与振动传感机制建立可复核的解调链路。
- **主要融合创新：TFBG 折射率传感。** 研究能否用集成光子滤波、光电探测和 CMOS 读出减少对高分辨率光谱仪的依赖。
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
2. [`docs/mechanism-options.md`](docs/mechanism-options.md)：为什么选择 FBG、TFBG 和 DAS 的三级结构。
3. [`docs/three-layer-roadmap.md`](docs/three-layer-roadmap.md)：集成制造、传感原理、封装测试三层路线。
4. [`docs/initial-signal-chain.md`](docs/initial-signal-chain.md)：首版光学—电学信号链与预算字段。
5. [`evidence/starter-paper-cards.md`](evidence/starter-paper-cards.md)：起始论文证据卡。
6. [`docs/evidence-boundaries.md`](docs/evidence-boundaries.md)：事实、推导与待验证问题的边界。
7. [`ROADMAP.md`](ROADMAP.md)：后续可验收里程碑。

## 在线页面

GitHub Pages 发布源位于 `site/`。首次远程发布后，页面预计位于：

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
