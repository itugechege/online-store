--#PRODUCTS SCHEMA.

CREATE TABLE products_schema.product_category(
    id SERIAL PRIMARY KEY NOT NULL,
    product_type VARCHAR(255) NOT NULL,
    description VARCHAR(255) NOT NULL,
    created_at TIMESTAMP NOT NULL,
    updated_at TIMESTAMP,
    status BOOLEAN
);

CREATE TABLE products_schema.products_subcategory(
    id  SERIAL PRIMARY KEY NOT NULL,
    category_id BIGINT NOT NULL,
    sub_category VARCHAR(255),
    description VARCHAR(255),
    created_at TIMESTAMP,
    updated_at TIMESTAMP,
    status BOOLEAN,
    CONSTRAINT category_to_sub_fk FOREIGN KEY (category_id) REFERENCES products_schema.product_category(id)
        ON DELETE CASCADE
        ON UPDATE CASCADE,
);

CREATE TABLE products_schema.price_decision_factor(
    id SERIAL PRIMARY KEY NOT NULL,
    price_decision_factor VARCHAR(255) NOT NULL,
    description VARCHAR(255),
    updated_at TIMESTAMP,
    status BOOLEAN,
);

CREATE TABLE products_schema.currency_decision_factor(
    Id SERIAL PRIMARY KEY NOT NULL,
    currency_type VARCHAR(50) NULL,
    description VARCHAR(200) NULL,
    updated_by VARCHAR(50) NULL,
    last_updated TIMESTAMP NULL,
    status BOOLEAN NULL,
);

CREATE TABLE products_schema.options (
    id SERIAL PRIMARY KEY NOT NULL,
    option_name VARCHAR(255) NOT NULL,
    option_description TEXT,
    updated_at TIMESTAMP,
    status BOOLEAN,
);

C

CREATE TABLE products_schema.option_values (
    id SERIAL PRIMARY KEY NOT NULL,
    option_id BIGINT,
    option_values VARCHAR(255),
    description TEXT,
    updated_at TIMESTAMP,
    status BOOLEAN
    CONSTRAINT option_fk FOREIGN KEY (option_id) REFERENCES products_schema.options (id)
);
CREATE TABLE products_schema.products(
    id SERIAL PRIMARY KEY NOT NULL, --PRODUCT ID
    price_decision_factor BIGINT NOT NULL,
    product_sub_category BIGINT NOT NULL,
    currency_decision BIGINT NOT NULL,
    name VARCHAR NOT NULL, --PRODUCT NAME
    description TEXT NOT NULL,
    price MONEY NOT NULL,
    sku VARCHAR(50),
    availability_count BIGINT NOT NULL,
    percentage_discount FLOAT NOT NULL,
    special_offer_min_qty VARCHAR(10) NOT NULL,
    min_allowed_buy_qty VARCHAR(10) NOT NULL,
    created_at TIMESTAMP,
    updated_at TIMESTAMP,
    status BOOLEAN,
    CONSTRAINT product_price_decision_factor_fk FOREIGN KEY (price_decision_factor) REFERENCES products_schema.currency_decision_factor(id)
        ON DELETE SET NULL
        ON UPDATE CASCADE,
    CONSTRAINT product_products_category_fk FOREIGN KEY (product_category) REFERENCES products_schema.products_subcategory(id)
        ON DELETE SET NULL
        ON UPDATE CASCADE,
    CONSTRAINT product_currency_decision_fk FOREIGN KEY (currency_decision) REFERENCES products_schema.currency_decision_factor(id)
        ON DELETE SET DEFAULT
        ON UPDATE CASCADE
);

CREATE TABLE products_schema.product_options (
 id SERIAL PRIMARY KEY NOT NULL,
 option_id BIGINT NOT NULL,
 option_value_id BIGINT NOT NULL,
 product_id BIGINT NOT NULL,
 CONSTRAINT product_option_fk FOREIGN KEY (option_id) REFERENCES products_schema.options (id)
    ON DELETE NO ACTION
    ON UPDATE CASCADE,
 CONSTRAINT product_options_values_fk FOREIGN KEY (option_value_id) REFERENCES products_schema.option_values (id)
    ON DELETE NO ACTION
    ON UPDATE CASCADE,
CONSTRAINT product_options_product_fk FOREIGN KEY (product_id) REFERENCES products_schema.products (id)
    ON DELETE NO ACTION
    ON UPDATE CASCADE,
  );

CREATE TABLE products_schema.price_history (
    product_id BIGINT,
    previous_price MONEY,
    current_price MONEY,
    updated_at TIMESTAMP,
    CONSTRAINT price_product_fk FOREIGN KEY (product_id) REFERENCES products_schema.products (id)
    ON DELETE NO ACTION
    ON UPDATE CASCADE,
);

CREATE TABLE products_schema.product_image (
    id SERIAL PRIMARY KEY NOT NULL,
    product_id BIGINT UNIQUE NOT NULL,
    product_image_1 VARCHAR(500),
    image_1_caption VARCHAR(255),
    product_image_2 VARCHAR(500),
    image_2_caption VARCHAR(255),
    product_image_3 VARCHAR(500),
    image_3_caption VARCHAR(255),
    product_image_4 VARCHAR(500),
    image_4_caption VARCHAR(255),
    product_image_5 VARCHAR(500),
    image_5_caption VARCHAR(255),
    created_at TIMESTAMP,
    updated_at TIMESTAMP,
    status BOOLEAN,
    CONSTRAINT img_product_fk FOREIGN KEY (product_id) REFERENCES products_schema.products (id)
    ON DELETE NO ACTION
    ON UPDATE CASCADE
);
