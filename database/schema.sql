-- Database Schema for AI Barbershop Automation

-- USERS TABLE
-- Stores both customers and barbers
CREATE TABLE users (
    id SERIAL PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    phone VARCHAR(20) UNIQUE NOT NULL,
    user_type VARCHAR(20) NOT NULL, -- customer | barber
    preferred_barber_id INTEGER,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- SERVICES TABLE
-- Services offered by the barbershop
CREATE TABLE services (
    id SERIAL PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    duration_minutes INTEGER NOT NULL,
    price DECIMAL(10,2)
);

-- APPOINTMENTS TABLE
-- Stores appointment data
CREATE TABLE appointments (
    id SERIAL PRIMARY KEY,
    customer_id INTEGER REFERENCES users(id),
    barber_id INTEGER REFERENCES users(id),
    service_id INTEGER REFERENCES services(id),
    appointment_start TIMESTAMP NOT NULL,
    appointment_end TIMESTAMP NOT NULL,
    status VARCHAR(20) DEFAULT 'scheduled', -- scheduled | cancelled | completed
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- BARBER AVAILABILITY TABLE
-- Time blocks when barbers are unavailable
CREATE TABLE barber_blocks (
    id SERIAL PRIMARY KEY,
    barber_id INTEGER REFERENCES users(id),
    block_start TIMESTAMP NOT NULL,
    block_end TIMESTAMP NOT NULL,
    reason VARCHAR(255)
);

-- PRODUCTS TABLE
-- Products that can be recommended to customers
CREATE TABLE products (
    id SERIAL PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    description TEXT,
    related_service_id INTEGER REFERENCES services(id),
    price DECIMAL(10,2)
);
