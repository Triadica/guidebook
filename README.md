## Triadica Guidebook

- Demo https://r.tiye.me/Triadica/guidebook/ .
- Project https://github.com/Triadica/triadica-space/

### 开发

这是 Triadica 文档站点，使用 [Docs Workflow](https://github.com/calcit-lang/docs-workflow) 渲染文档。应用源码以 `calcit.cirru` 为准，依赖和 Calcit 正式版本记录在 `deps.cirru`。

使用 Node.js 24、Yarn 4.18.0 和与 `@calcit/procs` 配对的 Calcit：

```bash
caps --strict --ci
yarn install --immutable
caps verify --toolchain
calcit --check-only --all-defs
yarn dev
```

`yarn dev` 先编译再启动 Vite；修改 Calcit 源码后另行执行 `yarn compile`，Vite 接收生成模块的热更新。开发模式通过 `?mode=dev` 启用，Reel 快捷键为 Shift+Meta+Alt+K。

### 构建与部署

`yarn build` 默认生成相对资源路径。Actions 使用 `VITE_BASE_URL=https://cos-sh.tiye.me/Triadica/guidebook/` 构建，上传前端资源和 mdBook 到 COS，并使用上传 action 自身的校验。页面仍部署到原来的 `/web-assets/repo/Triadica/guidebook`，没有后端部署变更。PR 只检查和构建，不读取部署 secrets 或上传资源。

文档样式来自已锁定的 Docs Workflow 模块和 npm CSS 依赖，不再安装旧的 npm 版 `@calcit/docs-workflow`。`js-out/`、`dist/`、`.calcit/` 为本地产物，不提交。

### 限制

- `docs/` 中的 Triadica 历史代码示例尚未按当前 Triadica API 更新；应用严格检查不代表这些示例可直接运行。
- 部分外部视频可能已删除，生产打包仍有 highlight.js 引起的大 bundle 提示。

### License

MIT
