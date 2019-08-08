package com.amz.reviews.service;

import com.amz.reviews.model.Order;
import com.amz.reviews.model.Product;
import com.amz.reviews.model.User;
import com.amz.reviews.repository.OrderRepository;
import com.amz.reviews.repository.ProductRepository;
import com.amz.reviews.repository.UserRepository;
import com.amz.reviews.to.OrderTo;
import com.amz.reviews.util.ParseHTMLUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.time.LocalDateTime;
import java.util.List;
import java.util.Objects;

@Service
@Transactional(readOnly = true)
public class ProductServiceImpl implements ProductService {

    @Autowired
    private ProductRepository productRepository;

    @Autowired
    private UserService userService;

    @Autowired
    private OrderService orderService;

    @Autowired
    private ImageService imageService;

    @Override
    @Transactional
    public void sellerCreateOrders(OrderTo orderTo, int userId) {
        Product product = sellerGetProduct(orderTo.getId(), userId);

        if(Objects.nonNull(product) && product.getCountOrders() == 0) {
            product.setKey(orderTo.getKey());
            product.setCountOrders(orderTo.getCount());
//            product.setReviewEnable(orderTo.isReview());
            product.setDateOfChange(LocalDateTime.now());
            productRepository.save(product);
        }
    }

    @Override
    public Product sellerGetProduct(int productId, int userId) {
        return productRepository.getSeller(productId, userId);
    }

    @Override
    public List<Product> sellerGetAllProducts(int userId) {
        return productRepository.getAllSeller(userId);
    }

    @Override
    public List<Product> customerGetActiveProducts() {
        return productRepository.getActiveProducts();
    }

    @Override
    public Product customerGetProduct(int productId) {
        Product product = productRepository.getCustomer(productId);

        if(Objects.nonNull(product) && product.getCountOrders() > 0)
            return product;

        // Обработка null
        return null;
    }

    @Override
    @Transactional
    public void customerReserve(Integer productId, int userId) {
        if(Objects.nonNull(productId)) {
            Product product = customerGetProduct(productId);

            if(Objects.nonNull(product)) {
                User user = userService.getOne(userId);
                Order order = new Order(null, LocalDateTime.now(), product.getName(),
                        product.getPrice(), "Reserved", product.getKey(), user, product);
                product.setCountOrders(product.getCountOrders() - 1);
                productRepository.save(product);
                orderService.save(order);
            }
        }
    }

    @Override
    @Transactional
    public void sellerCreateProduct(String asin, int userId) {
        Product product = ParseHTMLUtil.createAndUpdateProduct(asin);
        if(Objects.nonNull(product)) {
            product.setCountOrders(1);
            product.setActiveOrders(0);
            product.setCompletedOrders(0);
            product.setUser(userService.getOne(userId));

            productRepository.save(product);

            product.getImages().forEach(i -> i.setProduct(product));

            imageService.saveAll(product.getImages());
        }
    }
}
