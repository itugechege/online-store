-- #USERS SCHEMA
CREATE TABLE  users_schema.users(
    id SERIAL PRIMARY KEY NOT NULL,
    user_name VARCHAR(255),
    f_name VARCHAR(100), -- users first name
    l_name VARCHAR(100), -- users last name
    email VARCHAR(255), -- User email
    phone_number VARCHAR(100), --Users phone number
    password VARCHAR(255), --Users password
    user_role VARCHAR(255) NOT NULL,
    created_at TIMESTAMP, --timestamp for when the account was created
    updated_at TIMESTAMP, --Timestamp for when the account information was last updated
);

CREATE TABLE users_schema.password_reset(
    user_id BIGINT, --Foreign key users_schema.users.id
    current_password VARCHAR(255), NOT NULL, --Current user password.
    updated_password VARCHAR(255), --New user password.
    updated_at TIMESTAMP DEFAULT now(),
    CONSTRAINT PRIMARY KEY (id),
    CONSTRAINT pass_rst_fk FOREIGN KEY (user_id) REFERENCES users_schema.users(id)
);

CREATE TABLE users_schema.session(
    id SERIAL NOT NULL, --Session ID.
    user_id  BIGINT NOT NULL, --Foreign key users_schema.users.id
    started_at TIMESTAMP NOT NULL, --Session start timestamp 
    ended_at    TIMESTAMP NOT NULL, --Session end time.
    CONSTRAINT PRIMARY KEY (id),
    CONSTRAINT session_fk FOREIGN KEY (user_id) REFERENCES users_schema.users(id)

);

CREATE TABLE users_schema.payment_credentials(
    user_id BIGINT NOT NULL, --Foreign key users_schema.users.id 
    mpesa_number VARCHAR(255), --User's mpesa number.
    paypall_email VARCHAR(255), --User's paypall email.
    card_number VARCHAR(255), --User card number.
    vcc_number VARCHAR(255),
    CONSTRAINT payment_fk FOREIGN KEY (user_id) REFERENCES users_schema.users(id)

);

CREATE TABLE users_schema.shipping_information(
    user_id BIGINT NOT NULL, --Foreign key user id.
    country VARCHAR(255) NOT NULL, --Shipping country
    county VARCHAR(255) NOT NULL,
    city VARCHAR(255),
    town VARCHAR(255) NOT NULL,
    CONSTRAINT shipping_fk FOREIGN KEY (user_id) REFERENCES users_schema.users(id)
);
