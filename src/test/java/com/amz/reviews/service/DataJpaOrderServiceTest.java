package com.amz.reviews.service;

import com.amz.reviews.model.Order;
import org.junit.jupiter.api.BeforeAll;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;

import java.util.List;

import static com.amz.reviews.OrderTestData.*;
import static com.amz.reviews.ProductTestData.PRODUCT_1;
import static com.amz.reviews.ProductTestData.PRODUCT_3;
import static com.amz.reviews.UserTestData.ALEX;
import static com.amz.reviews.UserTestData.MYKE;
import static org.junit.jupiter.api.Assertions.assertEquals;
import static org.junit.jupiter.api.Assertions.assertNull;

class DataJpaOrderServiceTest extends AbstractServiceTest {

    @BeforeEach
    void setUp() {
        ORDER_NEW.setId(null);
    }

    @Autowired
    private OrderService service;

    @Test
    void sellerCreateTest() {
        service.sellerCreate(ORDER_NEW, PRODUCT_3.getId(), ALEX.getId());
        List<Order> allOrders = service.getAll();
        assertEquals(6, allOrders.size());
        assertMatch(allOrders, ORDER1, ORDER2, ORDER3, ORDER4, ORDER5, ORDER_NEW);
    }

    @Test
    void sellerCreateNotFoundTest() {
        service.sellerCreate(ORDER_NEW, PRODUCT_3.getId(), MYKE.getId());
        List<Order> allOrders = service.getAll();
        assertEquals(5, allOrders.size());
        assertMatch(allOrders, ORDER1, ORDER2, ORDER3, ORDER4, ORDER5);
    }

    @Test
    void sellerGetActiveOrderTest() {
        List<Order> allOrders = service.sellerGetActiveOrder(PRODUCT_1.getId(), ALEX.getId());
        assertEquals(3, allOrders.size());
        assertMatch(allOrders, ORDER1, ORDER2, ORDER3);
    }


    @Test
    void sellerGetActiveOrderNotFoundTest() {
        List<Order> allOrders = service.sellerGetActiveOrder(PRODUCT_1.getId(), MYKE.getId());
        assertNull(allOrders);
    }

    @Test
    void sellerGetCompletedOrderTest() {
        List<Order> allOrders = service.sellerGetCompletedOrder(PRODUCT_1.getId(), ALEX.getId());
        assertEquals(2, allOrders.size());
        assertMatch(allOrders, ORDER4, ORDER5);
    }


    @Test
    void sellerGetCompletedOrderNotFoundTest() {
        List<Order> allOrders = service.sellerGetCompletedOrder(PRODUCT_1.getId(), MYKE.getId());
        assertNull(allOrders);
    }
}