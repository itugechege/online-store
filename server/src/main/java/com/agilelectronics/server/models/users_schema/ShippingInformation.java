package com.agilelectronics.server.models.users_schema;

import lombok.AllArgsConstructor;
import lombok.NoArgsConstructor;
import lombok.Data;

import javax.persistence.*;

@Data
@NoArgsConstructor
@AllArgsConstructor
@Entity
@Table(name = "shipping_information", schema = "users_schema")
public class ShippingInformation {
    
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "user_id")
    private Long userId;
    
    @Column(name = "country")
    private String country;
    
    @Column(name = "county")
    private String county;
    
    @Column(name = "city")
    private String city;
    
    @Column(name = "town")
    private String town;
    
    @OneToOne
    @JoinColumn(name = "user_id", referencedColumnName = "id", insertable = false, updatable = false)
    private User user;
}

