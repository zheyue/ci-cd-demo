# CI/CD + Docker MVP

最小可运行的 CI/CD + Docker：FastAPI 小服务；GitHub Actions 自动构建并推送 GHCR；一键部署到 Render/Fly.io。

## 快速开始
- 健康检查：`/health` 返回 `{"status":"ok"}`  
- 镜像：`ghcr.io/<YOUR_GH_USER>/<YOUR_REPO>:latest`

### 本地运行
```bash
pip install -r requirements.txt
uvicorn app:app --host 0.0.0.0 --port 8080
