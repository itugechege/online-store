CREATE SCHEMA user_schema();
CREATE SCHEMA products();



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

CREATE TABLE sessions(
    id UUID PRIMARY KEY NOT NULL,
    session_ke VARCHAR(500) NOT NULL UNIQUE,
    user_id BIGINT NOT NULL,
    started_at DATE NOT NULL,
    ended_at DATE NOT NULL
);

CREATE TABLE shipping_information(
    user_id BIGINT NOT NULL,
    country VARCHAR(20) NOT NULL,
    county VARCHAR(50) NOT NULL,
    town VARCHAR(100) NOT NULL,
    area VARCHAR(100) NOT NULL
);


CREATE TABLE products.product_option_value(
    id BIGINT NOT NULL, --Product Option id.

);

CREATE TABLE products.product_options(
    id UUID UNIQUE PRIMARY KEY NOT NULL, --product_options id.
    product_id BIGINT NOT NULL,     --Product id.
    option  VARCHAR(255) NOT NULL,  --Option name.
    description VARCHAR(255) NOT NULL, --Option description.
    created_at DATE NOT NULL DEFAULT TIME.now(), --Creation timestamp.
    updated_at DATE NOT NULL DEFAULT TIME.now()
);

CREATE TABLE products.categories(
    id UUID PRIMARY KEY NOT NULL, --category_id.
    category VARCHAR(100) UNIQUE NOT NULL, --Category name.
    description TEXT NOT NULL,
    created_at DATE NOT NULL DEFAULT TIME.now(), --Creation timestamp.
    updated_at DATE NOT NULL DEFAULT TIME.now() 
);

CREATE TABLE products.brands(
    id UUD PRIMARY KEY NOT NULL, --Brand id.
    name VARCHAR(255) NOT NULL , --Brand name.
    description TEXT NOT NULL, --Brand description
    created_at DATE NOT NULL DEFAULT TIME.now(), --Creation timestamp.
    updated_at DATE NOT NULL DEFAULT TIME.now() 
);

CREATE TABLE products.image_url(
    id UUID PRIMARY KEY NOT NULL, --images path id.
    image_one VARCHAR(500) NOT NULL, --IMAGE ONE URL
    image_two VARCHAR(500) , --IMAGE TWO URL
    image_three VARCHAR(500) , --IMAGE THREE URL
    image_four VARCHAR(500) , --IMAGE FOUR URL
    image_five VARCHAR(500) , --IMAGE FIVE URL
    created_at DATE NOT NULL DEFAULT TIME.now(), --Creation timestamp.
    updated_at DATE NOT NULL DEFAULT TIME.now() 
);

CREATE TABLE products.price_history(
    product_id BIGINT NOT NULL, --product_id.
    price MONEY NOT NULL, --Product pricing and current timestamp.
    timestamp DATETIME NOT NULL DEFAULT TIME.now()
);

CREATE TABLE product(
    id UUID PRIMARY KEY NOT NULL, --Product id
    name  VARCHAR(200) NOT NULL, --Product name.
    brand_id BIGINT(200) NOT NULL PRIMARY KEY, --Brand id foreign key.
    price MONEY NOT NULL , --Product price.
    stock_count BIGINT NOT NULL DEFAULT 0, --Products in stock.

);