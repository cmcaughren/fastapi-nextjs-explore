from fastapi.testclient import TestClient

from .main import app

client = TestClient(app)

def test_echo():
    response = client.get("/echo/fart")
    assert response.status_code == 200
    assert response.json() == {"Your Entered Value": "fart"}