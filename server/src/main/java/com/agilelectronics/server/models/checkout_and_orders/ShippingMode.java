package com.agilelectronics.server.models.checkout_and_orders;
  
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import javax.persistence.*;

@Entity
@Data
@NoArgsConstructor
@AllArgsConstructor
@Table(name = "shipping_mode", schema = "checkout_and_orders")
public class ShippingMode {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
    @Column(name = "shipping_mode")
    private String shippingMode;
    @Column(name = "description")
    private String description;
}

