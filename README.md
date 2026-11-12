## Triadica Guidebook

- Demo https://r.tiye.me/Triadica/guidebook/ .
- Project https://github.com/Triadica/triadica-space/

### 开发

这是 Triadica 文档站点，使用 [Docs Workflow](https://github.com/calcit-lang/docs-workflow) 渲染文档。应用源码以 `calcit.cirru` 为准，依赖和 Calcit 正式版本记录在 `deps.cirru`。

开发使用配对的 Calcit CLI 和 `@calcit/procs` 0.42.1。文档导航通过具名 `docs-workflow.schema/Op` 派发。Reel 0.11 的面板和快捷键使用独立的 `reel.typed/Control` 回调，由 Docs Workflow 0.1.0 的组件接收。

npm 新版本解析统一执行一小时包龄门禁，无包级豁免；已有 lock 的解析结果由 `yarn install --immutable` 原样重放，不会在每次安装时重新检查包龄。使用 Node.js 24、Yarn 4.18.0 和与 `@calcit/procs` 配对的 Calcit：

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
