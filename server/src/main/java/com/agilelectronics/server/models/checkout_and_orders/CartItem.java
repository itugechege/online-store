package com.agilelectronics.server.models.checkout_and_orders;

@AllArgsConstructor;
@NoArgsConstructor
@Data
@Entity
@Table( name = "cart_items" schema = "checkout_and_orders")
public class CartItem{

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id")
    private Long id;

    @Column(name = "product_id")
    private Long productId;

    @Column(name = "product_option")
    private Long productOption;

    @Column(name = "product_value")
    private Long productValue;

    @Column(name = "product_count")
    private int productCount;

    @Column(name = "created_at")
    private Date createdAt;

    @Column( name = "updated_at")
    private Date updatedAt;

}