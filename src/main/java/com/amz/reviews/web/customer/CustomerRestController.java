package com.amz.reviews.web.customer;

import org.springframework.http.MediaType;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
@RequestMapping(value = CustomerRestController.REST_URL, produces = MediaType.APPLICATION_JSON_VALUE)
public class CustomerRestController extends AbstractCustomerController {

    static final String REST_URL = "/rest/customer";

//    @Override
//    @GetMapping
//    public List<OrderTo> getAll() {
//        return super.getAll();
//    }

//    @GetMapping("/order/{id}")
//    public Order get(@PathVariable int id) {
//        return super.get(id);
//    }
}
