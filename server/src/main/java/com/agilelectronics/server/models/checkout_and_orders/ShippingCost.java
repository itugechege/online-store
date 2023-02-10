package com.agilelectronics.server.models.checkout_and_orders;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import javax.persistence.*;

@Data
@AllArgsConstructor
@NoArgsConstructor
@Entity
@Table( name = "shipping_cost" , schema = "checkout_and_orders")
public class ShippingCost {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
    @Column(name = "mode_id")
    private Long modeId;
    @Column(name = "country")
    private String country;
    @Column(name = "country")
    private String county;
    @Column(name = "city")
    private String city;
    @Column(name = "town")
    private String town;
    @Column(name = "cost_per_kg")
    private Double costPerKg;
}
