package com.agilelectronics.server.models.products_schema;

import java.time.LocalDateTime;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@Entity
@Table(name = "currency_decision_factor", schema = "products_schema")
@NoArgsConstructor
@AllArgsConstructor
public class CurrencyDecisionFactor {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @Column(name = "currency_type")
    private String currencyType;

    @Column(name = "description")
    private String description;

    @Column(name = "updated_by")
    private String updatedBy;

    @Column(name = "last_updated")
    private LocalDateTime lastUpdated;

    @Column(name = "status")
    private Boolean status;
}
