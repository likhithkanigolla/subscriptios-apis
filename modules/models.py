from pydantic import BaseModel

# Define Pydantic models for your application

class SensorData(BaseModel):
    con: str
    ct: str
    
class MotorFlowRateRequest(BaseModel):
    voltage: float = 220
    current: float = 10.11
    power_factor: float = 0.11
    motor_efficiency: float = 0.85
    depth: float = 3
    timeMultiplier: int = 1