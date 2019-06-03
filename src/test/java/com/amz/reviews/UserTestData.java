package com.amz.reviews;

import com.amz.reviews.model.User;

import java.time.Month;
import java.util.List;

import static java.time.LocalDateTime.of;
import static org.assertj.core.api.Assertions.assertThat;

public class UserTestData {

    public static final User Alex = new User(1, of(2019, Month.MAY, 30, 10, 0), "Alex", "alex@yandex.ru", "password",
            true,"Russia", "Moscow", 0);

    public static final User Myke = new User(2, of(2019, Month.MAY, 30, 13, 0), "Myke", "myke@gmail.com", "password",
            true,"USA", "New York", 0);


    public static void assertMatch(Iterable<User> actual, User... expected) {
        assertMatch(actual, List.of(expected));
    }

    public static void assertMatch(Iterable<User> actual, Iterable<User> expected) {
        assertThat(actual).usingElementComparatorIgnoringFields("date").isEqualTo(expected);
    }
}
