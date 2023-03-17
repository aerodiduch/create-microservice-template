from fastapi import FastAPI, Request

app = FastAPI()

@app.post("/")
async def home(request: Request):
    body = await request.json()
    return "200 HTTPS OK"
