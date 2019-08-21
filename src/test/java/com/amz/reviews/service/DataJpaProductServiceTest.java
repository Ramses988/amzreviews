package com.amz.reviews.service;

import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;

class DataJpaProductServiceTest extends AbstractServiceTest {

    @Autowired
    private ProductService service;

    @Test
    void CreateProduct() {
        service.sellerCreateProduct("B07B69LSJZ", 1);
    }

//    @Test
//    void getAllTest() {
//        List<Product> allProduct = service.getAll(ALEX.getId());
//        assertEquals(3, allProduct.size());
//        assertMatch(allProduct, PRODUCT_1, PRODUCT_2, PRODUCT_3);
//    }
//
//    @Test
//    void getTest() {
//        Product product = service.get(3, ALEX.getId());
//        assertNotNull(product);
//        assertMatch(product, PRODUCT_3);
//    }
//
//    @Test
//    void getNotFoundTest() {
//        Product product = service.get(3, MYKE.getId());
//        assertNull(product);
//    }
//
//    @Test
//    void deleteTest() {
//        service.delete(4, MYKE.getId());
//        List<Product> allProduct = service.getAll(MYKE.getId());
//        assertEquals(1, allProduct.size());
//        assertMatch(allProduct, PRODUCT_5);
//    }
//
//    @Test
//    void deleteNotFoundTest() {
//        service.delete(4, ALEX.getId());
//        List<Product> allProduct = service.getAll(MYKE.getId());
//        assertEquals(2, allProduct.size());
//        assertMatch(allProduct, PRODUCT_4, PRODUCT_5);
//    }
//
//    @Test
//    void saveTest() {
//        service.create(NEW_PRODUCT, MYKE.getId());
//        List<Product> allProduct = service.getAll(MYKE.getId());
//        assertEquals(3, allProduct.size());
//        assertMatch(allProduct, PRODUCT_4, PRODUCT_5, NEW_PRODUCT);
//    }
//
//    @Test
//    void updateTest() {
//        service.update(PRODUCT_MODIFED, ALEX.getId());
//        List<Product> allProduct = service.getAll(ALEX.getId());
//        assertEquals(3, allProduct.size());
//        assertMatch(allProduct, PRODUCT_2, PRODUCT_3, PRODUCT_MODIFED);
//    }
//
//    @Test
//    void updateNotFoundTest() {
//        service.update(PRODUCT_MODIFED, MYKE.getId());
//        List<Product> allProduct = service.getAll(ALEX.getId());
//        assertEquals(3, allProduct.size());
//        assertMatch(allProduct, PRODUCT_1, PRODUCT_2, PRODUCT_3);
//    }
}
