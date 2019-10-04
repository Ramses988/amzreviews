package com.amz.reviews.web.seller;

import com.amz.reviews.model.Order;
import com.amz.reviews.model.Product;
import com.amz.reviews.to.OrderTo;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;

import javax.validation.Valid;
import java.util.List;
import com.amz.reviews.util.exception.ApplicationException;

@RestController
@RequestMapping(value = SellerRestController.REST_URL, produces = MediaType.APPLICATION_JSON_VALUE)
public class SellerRestController extends AbstractSellerController {

    static final String REST_URL = "/rest/seller";

    @GetMapping
    public List<Product> getAll() {
        return super.sellerGetAllProducts();
    }

    @GetMapping("/get-balance")
    public String getBalance() {
        return super.sellerGetBalance();
    }

    @GetMapping("/active-orders/{id}")
    public List<Order> getActiveOrder(@PathVariable("id") int id) {
        return super.sellerGetActiveOrders(id);
    }

    @GetMapping("/completed-orders/{id}")
    public List<Order> getCompletedOrder(@PathVariable("id") int id) {
        return super.sellerGetCompletedOrders(id);
    }

    @PostMapping("/add-product")
    @ResponseStatus(value = HttpStatus.NO_CONTENT)
    public void addProduct(@RequestBody String asin) {
        super.sellerCreateProduct(asin);
    }

    @PostMapping("/product/update")
    @ResponseStatus(value = HttpStatus.NO_CONTENT)
    public void update(@RequestBody Integer id) {
    }

    @PostMapping("/add-order")
    @ResponseStatus(value = HttpStatus.NO_CONTENT)
    public void createOrders(@Valid OrderTo orderTo, BindingResult result) {
        if(result.hasErrors())
            throw new ApplicationException("Проверьте правильность заплонения полей!");

        super.sellerCreateOrders(orderTo);
    }
}