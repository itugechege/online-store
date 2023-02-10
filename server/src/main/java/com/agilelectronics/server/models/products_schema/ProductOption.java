package com.agilelectronics.server.models.products_schema;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import javax.persistence.*;

@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
@Entity
@Table(name = "product_options", schema = "products_schema")
public class ProductOption {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id")
    private Long id;

    @Column(name = "option_id")
    private Long optionId;

    @Column(name = "option_value_id")
    private Long optionValueId;

    @Column(name = "product_id")
    private Long productId;

    @ManyToOne
    @JoinColumn(name = "option_id", referencedColumnName = "id", insertable = false, updatable = false)
    private Option option;

    @ManyToOne
    @JoinColumn(name = "option_value_id", referencedColumnName = "id", insertable = false, updatable = false)
    private OptionValue optionValue;

    @ManyToOne
    @JoinColumn(name = "product_id", referencedColumnName = "id", insertable = false, updatable = false)
    private Product product;

}

