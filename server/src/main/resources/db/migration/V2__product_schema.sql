--#PRODUCTS SCHEMA.

CREATE TABLE products_schema.product_category(
    id SERIAL NOT NULL,
    product_type VARCHAR(255) NOT NULL,
    description VARCHAR(255) NOT NULL,
    created_at TIMESTAMP NOT NULL,
    updated_at TIMESTAM, 
    status BOOLEAN
);

CREATE TABLE products_schema.products_subcategory(
    id  SERIAL NOT NULL,
    category_id BIGINT NOT NULL,
    sub_category VARCHAR(255),
    description VARCHAR(255),
    created_at TIMESTAMP,
    updated_at TIMESTAMP,
    status BOOLEAN
);

CREATE TABLE products_schema.price_decision_factor(
    id SERIAL NOT NULL,
    price_desicion_factor VARCHAR(255) NOT NULL,
    description VARCHAR(255),
    updated_at TIMESTAMP,
    status BOOLEAN
);

CREATE TABLE products_schema.currency_decision_factor(
    Id SERIAL NOT NULL,
    currency_type VARCHAR(50) NULL,
    description VARCHAR(200) NULL,
    updated_by VARCHAR(50) NULL,
    last_updated TIMESTAMP NULL,
    status BOOLEAN NULL
);

CREATE TABLE products_schema.price_history (
    id SERIAL NOT NULL,
    product_id BIGINT,
    previous_price MONEY,
    current_price MONEY,
    updated_at TIMESTAMP
);

CREATE TABLE products_schema.product_image_details (
    id SERIAL NOT NULL,
    product_id BIGINT NOT NULL,
    product_image_1 VARCHAR(500),
    product_image_2 VARCHAR(500),
    product_image_3 VARCHAR(500),
    product_image_4 VARCHAR(500),
    product_image_5 VARCHAR(500),
    product_image_6 VARCHAR(500),
    product_image_7 VARCHAR(500),
    product_image_8 VARCHAR(500),
    product_image_9 VARCHAR(500),
    product_image_10 VARCHAR(500),
    created_at TIMESTAMP,
    updated_at TIMESTAMP,
    status BOOLEAN
);

CREATE TABLE products_schema.options (
    id SERIAL NOT NULL,
    option_name VARCHAR(255) NOT NULL,
    option_description TEXT,
    updated_at TIMESTAMP,
    status BOOLEAN
);

CREATE TABLE products_schema.option_values (
    id SERIAL NOT NULL,
    option_id BIGINT,
    option_values VARCHAR(255),
    description TEXT,
    uptated_at TIMESTAMP,
    status BOOLEAN
);
CREATE TABLE products_schema.products(
    id SERIAL NOT NULL, --PRODUCT ID
    price_desicion_factor BIGINT NOT NULL,
    product_subcategory BIGINT NOT NULL,
    currency_decision BIGINT NOT NULL,
    name VARCHAR NOT NULL, --PRODUCT NAME
    description TEXT NOT NULL,
    price MONEY NOT NULL,
    sku VARCHAR(50),
    availability_count BIGINT NOT NULL,
    percentage_discoutn FLOAT NOT NULL,
    special_offer_min_qty VARCHAR(10) NOT NULL,
    min_alowed_buy_qty VARCHAR(10) NOT NULL,
    created_at TIMESTAMP,
    updated_at TIMESTAMP,
    status BOOLEAN
);

CREATE TABLE product_options (
 id SERIAL NOT NULL,
 option_id BIGINT NOT NULL,
 product_id BIGINT NOT NULL
)