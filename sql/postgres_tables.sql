-- Creation of Tables 
-- Authenticaltion Users Table 
CREATE TABLE IF NOT EXISTS users (
    id SERIAL PRIMARY KEY,
    username VARCHAR(255) UNIQUE NOT NULL,
    hashed_password VARCHAR(255) NOT NULL
);


--Added IF Not Exists to avoid errors when creating tables that already exist
-- Motor Node SQL Statements
CREATE TABLE IF NOT EXISTS "DM-MOTOR" (
    timestamp TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP,
    creationtime TIMESTAMP WITH TIME ZONE,
    status FLOAT,
    voltage FLOAT,
    current FLOAT,
    power FLOAT,
    energy FLOAT,
    frequency FLOAT,
    power_factor FLOAT
);
-- Status and Actuation
CREATE TABLE IF NOT EXISTS "DM-MOTOR-CONTROL" (
    timestamp TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP,
    creationtime TIMESTAMP WITH TIME ZONE,
    node_type VARCHAR,
    status VARCHAR
);



-- Water Flow Node SQL Statements
CREATE TABLE IF NOT EXISTS "WM-WF-SAMPLE" (
    timestamp TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP,
    creationtime TIMESTAMP WITH TIME ZONE,
    flowrate FLOAT,
    totalflow FLOAT
);


-- Water Level Nodes 
CREATE TABLE IF NOT EXISTS "WM-WL-SAMPLE" (
    timestamp TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP,
    creationtime TIMESTAMP WITH TIME ZONE,
    waterlevel FLOAT,
    temperature FLOAT
);


-- Water Quality / Water Distribution
-- Nodes with pH and turbidity
CREATE TABLE IF NOT EXISTS "WM-WD-SAMPLE-2" (
    timestamp TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP,
    creationtime TIMESTAMP WITH TIME ZONE,
    temperature FLOAT,
    voltage FLOAT,
    uncompensated_tds FLOAT,
    compensated_tds FLOAT,
    turbidity FLOAT,
    ph FLOAT
);
