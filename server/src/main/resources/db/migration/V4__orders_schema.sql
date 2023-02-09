-- ORDERS SCHEMA
CREATE TABLE cart (
    id SERIAL NOT NULL,
    user_id BIGINT NOT NULL,
    session_id VARCHAR(255) NOT NULL,
    token VARCHAR(255) NOT NULL,
    status VARCHAR(255) NOT NULL,
    created_at TIMESTAMP NOT NULL,
    updated_at TIMESTAMP
);

CREATE TABLE cart_items (
    id SERIAL NOT NULL,
    product_id BIGINT NOT NULL,
    cart_id BIGINT NOT NULL,
    product_sku VARCHAR(50) NOT NULL,
    discoutn_offered FLOAT NOT NULL,
    status VARCHAR(100) NOT NULL SET DEFAULT 'active',
    created_at TIMESTAMP,
    updated_at TIMESTAMP
);

CREATE TABLE cart_items_options (
    cart_item_id BIGINT NOT NULL,
    product_option BIGINT NOT NULL,
    option_value BIGINT NOT NULL
);

-- CREATE TABLE odered

