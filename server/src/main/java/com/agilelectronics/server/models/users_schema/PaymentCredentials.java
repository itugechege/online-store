package com.agilelectronics.server.models.users_schema;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import javax.persistence.*;

@Data
@NoArgsConstructor
@AllArgsConstructor
@Entity
@Table(name = "payment_credentials", schema = "users_schema")
public class PaymentCredentials {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "user_id")
    private Long userId;

    @Column(name = "mpesa_number")
    private String mpesaNumber;

    @Column(name = "paypall_email")
    private String paypallEmail;

    @Column(name = "card_number")
    private String cardNumber;

    @Column(name = "vcc_number")
    private String vccNumber;

    @OneToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "user_id", referencedColumnName = "id", insertable = false, updatable = false)
    private User user;
}

