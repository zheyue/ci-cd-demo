FROM python:3.11-slim

# 让 Python 日志立刻刷出
ENV PYTHONDONTWRITEBYTECODE=1 \
    PYTHONUNBUFFERED=1

WORKDIR /app

# 先装依赖（分层缓存更高效）
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# 拷贝代码
COPY . .

# 生产用启动命令
CMD ["uvicorn", "app:app", "--host", "0.0.0.0", "--port", "8080"]