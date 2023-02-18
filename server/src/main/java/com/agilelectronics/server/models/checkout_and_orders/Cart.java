package com.agilelectronics.server.models.checkout_and_orders;


@Data
@Entity
@Table(name = "cart" schema = "checkout_and_orders")
public class Cart{

    @Id
    @GenerationValue(strategy= GenerationType.IDENTITY)
    @Column(name = "id")
    private Long id;

    @Column(name = "user_id")
    private Long userId;

    @Column(name = "session_id")
    private Strig sessionId;

    @Column(name = "token")
    private Strig token;

    @Column(name = "created_at")
    private Date createdAt;

    @Column(name = "updated_at")
    private Date updatedAt;
}