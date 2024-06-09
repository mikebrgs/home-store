CREATE TABLE pot_health (
    time TIMESTAMPTZ NOT NULL,
    device_id VARCHAR(100) NOT NULL,
    temperature DOUBLE PRECISION,
    humidity DOUBLE PRECISION,
    pressure DOUBLE PRECISION,
    moisture DOUBLE PRECISION,
    light DOUBLE PRECISION
);

CREATE TABLE pot_status (
    time TIMESTAMPTZ NOT NULL,
    device_id VARCHAR(100) NOT NULL,
    battery DOUBLE PRECISION,
    cpu DOUBLE PRECISION,
    memory DOUBLE PRECISION,
    storage DOUBLE PRECISION,
    temperature DOUBLE PRECISION
);

SELECT create_hypertable('pot_health', 'time');
SELECT create_hypertable('pot_status', 'time');