package com.amz.reviews;

import com.amz.reviews.model.Order;

import java.time.Month;
import java.util.List;

import static java.time.LocalDateTime.of;
import static org.assertj.core.api.Assertions.assertThat;

public class OrderTestData {

    public static final Order ORDER1 = new Order(1, of(2019, Month.MAY, 31, 10, 0), "New", "Not paid");
    public static final Order ORDER2 = new Order(2, of(2019, Month.MAY, 31, 10, 0), "New", "Not paid");
    public static final Order ORDER3 = new Order(3, of(2019, Month.MAY, 31, 10, 0), "New", "Not paid");
    public static final Order ORDER4 = new Order(4, of(2019, Month.MAY, 31, 10, 0), "Completed", "Not paid");
    public static final Order ORDER5 = new Order(5, of(2019, Month.MAY, 31, 10, 0), "Completed", "Not paid");
    public static final Order ORDER6 = new Order(6, of(2019, Month.MAY, 31, 10, 0), "Reserved", "Not paid");
    public static final Order ORDER7 = new Order(7, of(2019, Month.MAY, 31, 10, 0), "Completed", "Paid");

    public static final Order ORDER_NEW = new Order(null, of(2019, Month.MAY, 31, 15, 0), "New", "Not paid");

    public static final Order ORDER_MODIFED = new Order(6, of(2019, Month.MAY, 31, 10, 0), "Reserved", "Not paid");

    static {
        ORDER1.setPrice(57.99);
        ORDER2.setPrice(57.99);
        ORDER3.setPrice(57.99);
        ORDER4.setPrice(57.99);
        ORDER5.setPrice(57.99);
        ORDER6.setPrice(57.99);
        ORDER7.setPrice(57.99);
        ORDER_NEW.setPrice(57.99);
        ORDER_MODIFED.setPrice(57.99);
        ORDER_MODIFED.setOrderId("111-1662308-2149008");
        ORDER_MODIFED.setReviews("https://www.amazon.com/hz/feedback");
    }

    public static void assertMatch(Order actual, Order expected) {
        assertThat(actual).isEqualToIgnoringGivenFields(expected,"user", "product");
    }

    public static void assertMatch(Iterable<Order> actual, Order... expected) {
        assertMatch(actual, List.of(expected));
    }

    public static void assertMatch(Iterable<Order> actual, Iterable<Order> expected) {
        assertThat(actual).usingElementComparatorIgnoringFields("user", "product").isEqualTo(expected);
    }
}
