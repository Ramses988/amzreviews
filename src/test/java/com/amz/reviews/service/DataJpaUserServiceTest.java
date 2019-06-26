package com.amz.reviews.service;

import com.amz.reviews.model.User;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;

import static com.amz.reviews.UserTestData.*;

import java.util.List;

import static com.amz.reviews.UserTestData.assertMatch;
import static org.junit.jupiter.api.Assertions.assertEquals;
import static org.junit.jupiter.api.Assertions.assertNotNull;

class DataJpaUserServiceTest extends AbstractServiceTest {

    @Autowired
    private UserService service;

    @Test
    void getAllTest() {
        List<User> allUsers = service.getAll();
        assertEquals(3, allUsers.size());
        assertMatch(allUsers, ALEX, MYKE, BOB);
    }

    @Test
    void getTest() {
        User user = service.get(ALEX.getId());
        assertNotNull(user);
        assertMatch(user, ALEX);
    }
}
