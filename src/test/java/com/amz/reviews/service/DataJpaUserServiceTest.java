package com.amz.reviews.service;

import org.springframework.beans.factory.annotation.Autowired;

class DataJpaUserServiceTest extends AbstractServiceTest {

    @Autowired
    private UserService service;

//    @Test
//    void getAllTest() {
//        List<User> allUsers = service.getAll();
//        assertEquals(3, allUsers.size());
//        assertMatch(allUsers, ALEX, MYKE, BOB);
//    }
//
//    @Test
//    void getTest() {
//        User user = service.get(ALEX.getId());
//        assertNotNull(user);
//        assertMatch(user, ALEX);
//    }
}
