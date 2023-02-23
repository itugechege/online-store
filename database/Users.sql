CREATE SCHEMA user_schema();

CREATE TABLE users(
    id UUID UNIQUE PRIMARY KEY NOT NULL,
    username VARCHAR(100) NOT NULL UNIQUE,
    f_name VARCHAR(200),
    l_name VARCHAR(200),
    email VARCHAR(255) UNIQUE NOT NULL,
    phone_number VARCHAR(100) UNIQUE,
    password VARCHAR(255) NOT NULL,

);

CREATE TABLE password_reset(
    user_id BIGINT NOT NULL,
    reset_code VARCHAR(500) NOT NULL,
    previous_password VARCHAR(255) NOT NULL,
    updated_password VARCHAR(255) NOT NULL,
    changed_at TIMESTAMP 
);