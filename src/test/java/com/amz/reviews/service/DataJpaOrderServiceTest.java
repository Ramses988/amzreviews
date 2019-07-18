package com.amz.reviews.service;

import com.amz.reviews.model.Order;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;

import java.util.List;

import static com.amz.reviews.OrderTestData.*;
import static com.amz.reviews.ProductTestData.PRODUCT_1;
import static com.amz.reviews.ProductTestData.PRODUCT_3;
import static com.amz.reviews.UserTestData.*;
import static org.junit.jupiter.api.Assertions.*;

class DataJpaOrderServiceTest extends AbstractServiceTest {

    @BeforeEach
    void setUp() {
        ORDER_NEW.setId(null);
        ORDER_MODIFED.setId(6);
        ORDER3.setStatus("New");
    }

    @Autowired
    private OrderService service;

//    @Test
//    void customerGetOrderTest() {
//        List<Order> allOrders = service.customerGetOrder();
//        assertEquals(3, allOrders.size());
//        allOrders.forEach(order -> assertEquals("Product_1", order.getProduct().getName()));
//        assertMatch(allOrders, ORDER3, ORDER2, ORDER1);
//    }
//
//    @Test
//    void customerReserveTest() {
//        service.customerReserve(ORDER3.getId(), BOB.getId());
//        List<Order> allOrders = service.customerGetOrder();
//        assertEquals(2, allOrders.size());
//        assertMatch(allOrders, ORDER2, ORDER1);
//        service.customerReserve(ORDER3.getId(), MYKE.getId());
//        Order order = service.get(ORDER3.getId(), BOB.getId());
//        ORDER3.setStatus("Reserved");
//        assertMatch(order, ORDER3);
//        order = service.get(ORDER3.getId(), MYKE.getId());
//        assertNull(order);
//    }

//    @Test
//    void customerGetTest() {
//        Order order = service.get(ORDER1.getId(), BOB.getId());
//        assertMatch(ORDER1, order);
//    }
//
//    @Test
//    void customerGetReservedTest() {
//        Order order = service.get(ORDER6.getId(), BOB.getId());
//        assertMatch(ORDER6, order);
//    }
//
//    @Test
//    void customerGetReservedNotFoundTest() {
//        Order order = service.get(ORDER6.getId(), ALEX.getId());
//        assertNull(order);
//    }
//
//    @Test
//    void customerUpdateTest() {
//        service.customerUpdate(ORDER_MODIFED, BOB.getId());
//        assertMatch(ORDER_MODIFED, service.get(ORDER_MODIFED.getId(), BOB.getId()));
//    }
//
//    @Test
//    void customerUpdateNotFoundTest() {
//        service.customerUpdate(ORDER_MODIFED, MYKE.getId());
//        assertMatch(ORDER6, service.get(ORDER_MODIFED.getId(), BOB.getId()));
//    }
//
//    @Test
//    void customerUpdateCompletedTest() {
//        ORDER_MODIFED.setId(7);
//        service.customerUpdate(ORDER_MODIFED, BOB.getId());
//        assertMatch(ORDER7, service.get(ORDER_MODIFED.getId(), BOB.getId()));
//    }

    @Test
    void customerGetActiveOrderTest() {
        List<Order> allOrders = service.customerGetActiveOrder(BOB.getId());
        assertEquals(1, allOrders.size());
        assertMatch(allOrders, ORDER6);
    }

    @Test
    void customerGetCompletedOrderTest() {
        List<Order> allOrders = service.customerGetCompletedOrder(BOB.getId());
        assertEquals(1, allOrders.size());
        assertMatch(allOrders, ORDER7);
    }

    @Test
    void sellerCreateTest() {
        service.sellerCreate(ORDER_NEW, PRODUCT_3.getId(), ALEX.getId());
        List<Order> allOrders = service.getAll();
        assertEquals(8, allOrders.size());
        assertMatch(allOrders, ORDER1, ORDER2, ORDER3, ORDER4, ORDER5, ORDER6, ORDER7, ORDER_NEW);
    }

    @Test
    void sellerCreateNotFoundTest() {
        service.sellerCreate(ORDER_NEW, PRODUCT_3.getId(), MYKE.getId());
        List<Order> allOrders = service.getAll();
        assertEquals(7, allOrders.size());
        assertMatch(allOrders, ORDER1, ORDER2, ORDER3, ORDER4, ORDER5, ORDER6, ORDER7);
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