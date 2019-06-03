package com.amz.reviews.service;

import com.amz.reviews.model.Product;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;

import java.util.List;

import static com.amz.reviews.ProductTestData.*;
import static org.junit.jupiter.api.Assertions.assertEquals;

class DataJpaProductServiceTest extends AbstractServiceTest {

    @Autowired
    private ProductService service;

    @Test
    void getAllTest() {
        List<Product> allProduct = service.getAll();
        assertEquals(5, allProduct.size());
        assertMatch(allProduct, PRODUCT_1, PRODUCT_2, PRODUCT_3, PRODUCT_4, PRODUCT_5);
    }

}
