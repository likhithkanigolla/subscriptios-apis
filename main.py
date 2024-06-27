from fastapi import FastAPI
from fastapi.middleware.cors import CORSMiddleware 
from modules import database
from routes.subscription_routes import router as subscription_router
import uvicorn

app = FastAPI(
    title="Digital Twin API",
    description="API for managing digital twin subscriptions, calculation models, and general routes.",
    version="1.0.0"
)
app.add_middleware(
    CORSMiddleware,
    allow_origins=["*"],
    allow_credentials=True,
    allow_methods=["*"],
    allow_headers=["*"],
)

# Database connection initialization
db = database

# Include routers from different modules
app.include_router(subscription_router, prefix="", tags=["Subscriptions"])

if __name__ == "__main__":
    uvicorn.run(app, host="0.0.0.0", port=1629)
