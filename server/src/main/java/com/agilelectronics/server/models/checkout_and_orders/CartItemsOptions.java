package com.agilelectronics.server.models.checkout_and_orders;

import lombok.AllArgsConstructor;
import lombok.NoArgsConstructor;

import javax.persistence.*;

@Entity
@AllArgsConstructor
@NoArgsConstructor
@Table(name = "cart_items_options", schema = "checkout_and_orders")
public class CartItemsOptions {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @Column(name = "cart_items_id", nullable = false)
    private Long cartItemsId;

    @Column(name = "product_id", nullable = false)
    private Long productId;

    @Column(name = "product_option", nullable = false)
    private Long productOption;

    @Column(name = "option_value", nullable = false)
    private Long optionValue;
}
