## Triadica Guidebook

- Demo https://r.tiye.me/Triadica/guidebook/ .
- Project https://github.com/Triadica/triadica-space/

### 开发

这是 Triadica 文档站点，使用 [Docs Workflow](https://github.com/calcit-lang/docs-workflow) 渲染文档。应用源码以 `calcit.cirru` 为准，依赖和 Calcit 正式版本记录在 `deps.cirru`。

本轮配对正式 Calcit/procs **0.32.1**、已发布 Docs Workflow **0.0.40**、Respo **0.17.1**、JS-FFI **0.2.9**，并通过真实发布依赖图安装。Reel **0.7.0-alpha.5** 及传递依赖 Alerts **0.11.0-alpha.4**、Markdown **0.5.0-alpha.5**、Router **0.9.0-alpha.4** 仍使用已发布 alpha 配对，不声称整个依赖图均为正式版。升级后重装依赖并刷新页面，样式可能有差异。
默认 entry 的 dispatch-op 显式绑定原 renderer 的 Dynamic→Unit 合同。保留已有 Op 解码和 Tag 游标检查，只在真实渲染入口检查 Dynamic→Enum，
同签名 updater 复用共享的受检 Store 更新；不弱化业务类型，不用 raise 替换 `hud!`。
有效操作、文档树、60 秒 Map 存档写入及原本不读取存档恢复的行为不变；未知 updater 操作日志
随共享实现改为 stderr，非 Enum 渲染输入会在入口明确报错。

依赖等待期统一为一小时，无版本豁免。使用 Node.js 24、Yarn 4.18.0 和与 `@calcit/procs` 配对的 Calcit：

```bash
caps --strict --ci
yarn install --immutable
caps verify --toolchain
calcit --check-only --all-defs
yarn dev
```

`yarn dev` 先编译再启动 Vite；修改 Calcit 源码后另行执行 `yarn compile`，Vite 接收生成模块的热更新。开发模式通过 `?mode=dev` 启用，Reel 快捷键为 Shift+Meta+Alt+K。

### 构建与部署

`yarn build` 默认生成相对资源路径。Actions 的 main 使用 `VITE_BASE_URL=https://cos-sh.tiye.me/Triadica/guidebook/` 构建，上传前端资源和 mdBook 到 COS，并使用上传 action 自身的校验。页面仍部署到原来的 `/web-assets/repo/Triadica/guidebook`，没有后端部署变更。PR 使用相对路径，只检查和构建，不读取部署 secrets 或上传 COS；保留原始双前端短期 artifact 供实际验收，避免预览误加载旧生产 CDN 代码。

文档样式来自已锁定的 Docs Workflow 模块和 npm CSS 依赖，不再安装旧的 npm 版 `@calcit/docs-workflow`。`js-out/`、`dist/`、`.calcit/` 为本地产物，不提交。

### 限制

- Guide/Overview 已按实际库合同修正工厂/import/类型提示，并退役不再被库转换的 `%nested-attribute` 示例；Attributes 区分数值点列表、标量属性和 packed 属性，没有替整个库宣称新版本已发布。其他历史代码片段尚未逐项迁移或独立编译，应用 strict 不代表所有示例可直接运行。
- 部分外部视频可能已删除，生产打包仍有 highlight.js 引起的大 bundle 提示。mdBook 的 Cirru 代码块仍因未注册语言回退为无高亮，复现于 [Docs Workflow #95](https://github.com/calcit-lang/docs-workflow/issues/95)；本次不声称修复。
- 当前 CI/实际双前端证据记录在迁移 PR；旧版本的绿灯不能代替本次验收，审查与生产部署分开决定。

### License

MIT
