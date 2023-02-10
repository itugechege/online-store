package com.agilelectronics.server.models.checkout_and_orders;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import java.util.Date;

@Data
@AllArgsConstructor
@NoArgsConstructor
@Entity
public class CartItem {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
    @Column( name = "product_id")
    private Long productId;
    @Column( name = "cart_id")
    private Long cartId;
    private String productSku;
    private float discountOffered;
    private String status;
    private Date createdAt;
    private Date updatedAt;
}

