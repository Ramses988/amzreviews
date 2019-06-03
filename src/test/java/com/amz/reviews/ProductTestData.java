package com.amz.reviews;

import com.amz.reviews.model.Product;

import java.time.Month;
import java.util.List;

import static java.time.LocalDateTime.of;
import static org.assertj.core.api.Assertions.assertThat;

public class ProductTestData {

    public static final Product PRODUCT_1 = new Product(1, of(2019, Month.MAY, 30, 10, 0), "Product_1", "B079JD7F7G",
            "TP-Link AC1750 Smart WiFi Router", 57.99, "Image1", "TP-Link AC1750 Smart WiFi Router", 0, 0);
    public static final Product PRODUCT_2 = new Product(2, of(2019, Month.MAY, 30, 13, 0), "Product_2", "B07PZL2BMH",
            "SUNGAIT Ultra Lightweight", 12.75, "Image1", "SUNGAIT Ultra Lightweight Rectangular Polarized", 0, 0);
    public static final Product PRODUCT_3 = new Product(3, of(2019, Month.MAY, 30, 15, 0), "Product_3", "B07L2NJKMK",
            "Wireless Earbuds", 29.99, "Image1", "Wireless Earbuds, Letsfit Bluetooth 5.0", 0, 0);
    public static final Product PRODUCT_4 = new Product(4, of(2019, Month.MAY, 30, 17, 0), "Product_4", "B07GPHG3L7",
            "Tea Tree Body Wash", 12.59, "Image1", "Tea Tree Body Wash, Helps Nail Fungus, Athletes Foot", 0, 0);
    public static final Product PRODUCT_5 = new Product(5, of(2019, Month.MAY, 30, 19, 0), "Product_5", "B07JB8BMJT",
            "Etekcity EK5150", 15.29, "Image1", "Etekcity EK5150 Digital Food Kitchen Scale for Cooking", 0, 0);

    public static void assertMatch(Product actual, Product expected) {
        assertThat(actual).isEqualToComparingFieldByField(expected);
    }

    public static void assertMatch(Iterable<Product> actual, Product... expected) {
        assertMatch(actual, List.of(expected));
    }

    public static void assertMatch(Iterable<Product> actual, Iterable<Product> expected) {
        assertThat(actual).usingElementComparatorIgnoringFields().isEqualTo(expected);
    }

}
