package com.agilelectronics.server.models.products_schema;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import javax.persistence.*;
import java.math.BigDecimal;
import java.util.Date;

@Entity
@Table(name = "products", schema = "products_schema")
@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
public class Product {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id")
    private Long id;

    @Column(name = "price_decision_factor")
    private Long priceDecisionFactor;

    @Column(name = "product_sub_category")
    private Long productSubCategory;

    @Column(name = "currency_decision")
    private Long currencyDecision;

    @Column(name = "name")
    private String name;

    @Column(name = "description")
    private String description;

    @Column(name = "price")
    private BigDecimal price;

    @Column(name = "sku")
    private String sku;

    @Column(name = "availability_count")
    private Long availabilityCount;

    @Column(name = "percentage_discount")
    private Float percentageDiscount;

    @Column(name = "special_offer_min_qty")
    private String specialOfferMinQty;

    @Column(name = "min_allowed_buy_qty")
    private String minAllowedBuyQty;

    @Column(name = "created_at")
    private Date createdAt;

    @Column(name = "updated_at")
    private Date updatedAt;

    @Column(name = "status")
    private Boolean status;

}
