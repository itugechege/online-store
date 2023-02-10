package com.agilelectronics.server.models.checkout_and_orders;


import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import javax.persistence.*;
import java.sql.Timestamp;

@Data
@AllArgsConstructor
@NoArgsConstructor
@Entity
@Table(name = "orders", schema = "checkout_and_orders")
public class Order {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @Column(name = "user_id")
    private Long userId;

    @Column(name = "tracking_number")
    private String trackingNumber;

    @Column(name = "shipping_info_id")
    private Long shippingInfoId;

    @Column(name = "shipping_mode")
    private Long shippingMode;

    @Column(name = "shipping_cost")
    private Long shippingCost;

    @Column(name = "shipping_information")
    private Long shippingInformation;

    @Column(name = "session_id")
    private Long sessionId;

    @Column(name = "status")
    private String status;

    @Column(name = "created_at")
    private Timestamp createdAt;

    @Column(name = "updated_at")
    private Timestamp updatedAt;
}
