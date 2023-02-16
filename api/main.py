"""
Basic API, sourced from: https://fastapi.tiangolo.com/tutorial/first-steps/
"""

from fastapi import FastAPI

app = FastAPI()

@app.get("/")
async def hello_world():
    """
    endpoint to test server
    """
    return {"message": "Hello World"}

@app.get("/echo/{value}")
async def echo(value):
    """
    endpoint to returning value
    """
    return {"Your Entered Value": value}
