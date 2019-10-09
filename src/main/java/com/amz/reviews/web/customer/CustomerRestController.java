package com.amz.reviews.web.customer;

import com.amz.reviews.model.Order;
import com.amz.reviews.to.OrderIdTo;
import com.amz.reviews.to.OrderReviewTo;
import com.amz.reviews.util.exception.ApplicationException;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;

import javax.validation.Valid;
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
    public void addOrderId(@Valid OrderIdTo orderid, BindingResult result) {
        if(result.hasErrors())
            throw new ApplicationException("Проверьте правильность заплонения полей!");

        super.customerAddOrderId(orderid);
    }

    @PostMapping("/add-review")
    @ResponseStatus(value = HttpStatus.NO_CONTENT)
    public void addReviews(@Valid OrderReviewTo orderReviewTo, BindingResult result) {
        if(result.hasErrors())
            throw new ApplicationException("Проверьте правильность заплонения полей!");

        super.customerAddReview(orderReviewTo);
    }

    @PostMapping("/product-reserve")
    @ResponseStatus(value = HttpStatus.NO_CONTENT)
    public void reserve(@RequestBody String id) {
        super.customerReserve(id);
    }
}
