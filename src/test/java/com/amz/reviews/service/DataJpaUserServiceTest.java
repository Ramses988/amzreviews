package com.amz.reviews.service;

import com.amz.reviews.model.User;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;

import static com.amz.reviews.UserTestData.*;

import java.util.List;

import static org.junit.jupiter.api.Assertions.assertEquals;

public class DataJpaUserServiceTest extends AbstractServiceTest {

    @Autowired
    private UserService service;

    @Test
    void getAllTest() {
        List<User> allUsers = service.getAll();
        assertEquals(2, allUsers.size());
        assertMatch(allUsers, Alex, Myke);
    }
}
