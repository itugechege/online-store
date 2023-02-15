-- ORDERS SCHEMA
CREATE TABLE checkout_and_orders.cart (
    id SERIAL NOT NULL,
    user_id BIGINT NOT NULL,
    session_id VARCHAR(255) NOT NULL,
    token VARCHAR(255) NOT NULL,
    status VARCHAR(255) NOT NULL,
    created_at TIMESTAMP NOT NULL,
    updated_at TIMESTAMP
);

CREATE TABLE checkout_and_orders.cart_items_options (
    id SERIAL NOT NULL,
    product_id BIGINT NOT NULL,
    product_option BIGINT NOT NULL,
    option_value BIGINT NOT NULL
);

CREATE TABLE checkout_and_orders.cart_items (
    id SERIAL NOT NULL,
    product_id BIGINT NOT NULL,
    cart_item_option BIGING NOT NULL,
    cart_id BIGINT NOT NULL,
    product_sku VARCHAR(50) NOT NULL,
    discount_offered FLOAT NOT NULL,
    status VARCHAR(100) NOT NULL SET DEFAULT 'pending_purchase',
    created_at TIMESTAMP,
    updated_at TIMESTAMP,
    CONSTRAINT cart_item_option_fk FOREIGN KEY (cart_item_option) REFERENCES checkout_and_orders.cart_items_options(id)
);

CREATE TABLE checkout_and_orders.shipping_mode(
    id SERIAL UNIQUE NOT NULL,
    shipping_mode VARCHAR(255) NOT NULL,
    description VARCHAR(255)NOT NULL,
);

-- CREATE TABLE order
CREATE TABLE shipping_cost(
    id SERIAL UNIQUE NOT NULL,
    mode_id BIGINT NOT NULL,
    country VARCHAR(255) NOT NULL, --Shipping country
    county VARCHAR(255) NOT NULL,
    city VARCHAR(255),
    town VARCHAR(1255) NOT NULL,
    cost_per_kg MONEY NOT NULL
);

CREATE TABLE checkout_and_orders.orders (
    id SERIAL UNIQUE NOT NULL,
    user_id  BIGINT NOT NULL,
    tracking_number VARCHAR(255),
    shipping_info_id BIGINT NOT NULL,
    shipping_mode BIGINT NOT NULL,
    shipping_cost BIGINT NOT NULL,
    shipping_information BIGINT NOT NULL,
    session_id BIGINT NOT NULL,
    status VARCHAR(100) NOT NULL,
    created_at TIMESTAMP NOT NULL DEFAULT now(),
    updated_at TIMESTAMP NOT NULL DEFAULT now()
);

