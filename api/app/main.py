from dotenv import load_dotenv
import os

load_dotenv()

MONGO_URL = os.environ["MONGO_URL"]

from fastapi import FastAPI

app = FastAPI()

print(MONGO_URL)

@app.get('/', include_in_schema=False)
async def entr():
    return {"hellow": "Codelove"}