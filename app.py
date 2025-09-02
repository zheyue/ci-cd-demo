from fastapi import FastAPI
import os

app = FastAPI()

@app.get("/health")
def health():
    return {"status": "ok"}

@app.get("/")
def index():
    who = os.getenv("WHO", "world")
    return {"hello": who}

@app.get("/ping")
def ping():
    return {"pong":True}


