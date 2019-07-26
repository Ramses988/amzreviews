package com.amz.reviews.web.seller;

import com.amz.reviews.model.Product;
import com.amz.reviews.to.OrderTo;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping(value = SellerRestController.REST_URL, produces = MediaType.APPLICATION_JSON_VALUE)
public class SellerRestController extends AbstractSellerController {

    static final String REST_URL = "/rest/seller";

    @GetMapping
    public List<Product> getAll() {
        return super.getAllSeller();
    }

    @PostMapping("/add-product")
    @ResponseStatus(value = HttpStatus.NO_CONTENT)
    public void addProduct(@RequestBody String asin) {
    }

    @PostMapping("/add-order")
    @ResponseStatus(value = HttpStatus.NO_CONTENT)
    public void createOrders(OrderTo orderTo) {
        super.createOrdersSeller(orderTo);
    }
}
