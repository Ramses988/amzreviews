package com.amz.reviews.web.customer;

import com.amz.reviews.model.Order;
import com.amz.reviews.to.OrderIdTo;
import com.amz.reviews.to.OrderReviewTo;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping(value = CustomerRestController.REST_URL, produces = MediaType.APPLICATION_JSON_VALUE)
public class CustomerRestController extends AbstractCustomerController {

    static final String REST_URL = "/rest/customer";

    @GetMapping("/active-orders")
    public List<Order> getActiveOrder() {
        return super.customerGetActiveOrders();
    }

    @GetMapping("/completed-orders")
    public List<Order> getCompletedOrder() {
        return super.customerCompletedOrders();
    }

    @PostMapping("/add-orderid")
    @ResponseStatus(value = HttpStatus.NO_CONTENT)
    public void addOrderId(OrderIdTo orderid) {
        super.customerAddOrderId(orderid);
    }

    @PostMapping("/add-review")
    @ResponseStatus(value = HttpStatus.NO_CONTENT)
    public void addReviews(OrderReviewTo orderReviewTo) {
        super.customerAddReview(orderReviewTo);
    }
}
