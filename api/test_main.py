"""
Basic API test, sourced from: https://fastapi.tiangolo.com/tutorial/testing/
"""

from fastapi.testclient import TestClient

from .main import app

client = TestClient(app)

def test_echo():
    """
    Test of 'echo' endpoint
    """
    response = client.get("/echo/foo")
    assert response.status_code == 200
    assert response.json() == {"Your Entered Value": "foo"}
