package com.agilelectronics.server.models.products_schema;

import java.sql.Timestamp;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class ProductImageDetails {
    private Long id;
    private Long productId;
    private String productImage1;
    private String productImage2;
    private String productImage3;
    private String productImage4;
    private String productImage5;
    private String productImage6;
    private String productImage7;
    private String productImage8;
    private String productImage9;
    private String productImage10;
    private Timestamp createdAt;
    private Timestamp updatedAt;
    private Boolean status;
}
