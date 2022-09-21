from fastapi import FastAPI


app = FastAPI()

@app.get("/")
async def hello_world():
    return {"message": "Hello World"}

@app.get("/echo/{value}")
async def echo(value):
    return {"Your Entered Value": value}