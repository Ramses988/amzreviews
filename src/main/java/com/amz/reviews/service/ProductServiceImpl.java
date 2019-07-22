package com.amz.reviews.service;

import com.amz.reviews.model.Order;
import com.amz.reviews.model.Product;
import com.amz.reviews.model.User;
import com.amz.reviews.repository.OrderRepository;
import com.amz.reviews.repository.ProductRepository;
import com.amz.reviews.repository.UserRepository;
import com.amz.reviews.util.ParseHTMLUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.util.Assert;

import java.time.LocalDateTime;
import java.util.List;
import java.util.Objects;

@Service
public class ProductServiceImpl implements ProductService {

    @Autowired
    private ProductRepository productRepository;

    @Autowired
    private UserRepository userRepository;

    @Autowired
    private OrderRepository orderRepository;

    @Autowired
    private ImageService imageService;

    @Override
    public List<Product> getAllSeller(int userId) {
        return productRepository.getAllSeller(userId);
    }

    @Override
    public List<Product> getActiveProducts() {
        return productRepository.getActiveProducts();
    }

    @Override
    public Product get(int productId) {
        Product product = productRepository.get(productId);

        if(Objects.nonNull(product) && product.getCountOrders() > 0)
            return product;

        // Обработка null
        return null;
    }

    @Override
    public void customerReserve(Integer productId, int userId) {
        if(Objects.nonNull(productId)) {
            Product product = get(productId);

            if(Objects.nonNull(product)) {
                User user = userRepository.getOne(userId);
                Order order = new Order(null, LocalDateTime.now(), product.getName(),
                        product.getPrice(), "Reserved", product.getKey(), user, product);
                product.setCountOrders(product.getCountOrders() - 1);
                productRepository.save(product);
                orderRepository.save(order);
            }
        }
    }

    @Override
    public void CreateProduct(String asin, int userId) {
        Product product = ParseHTMLUtil.createAndUpdateProduct(asin);
        if(Objects.nonNull(product)) {
            product.setCountOrders(1);
            product.setActiveOrders(0);
            product.setCompletedOrders(0);
            product.setUser(userRepository.getOne(userId));

            productRepository.save(product);

            product.getImages().forEach(i -> i.setProduct(product));

            imageService.saveAll(product.getImages());
        }
    }

    //    @Override
//    public List<Product> getAll(int userId) {
//        return repository.getAll(userId);
//    }
//
//    @Override
//    public Product get(int id, int userId) {
//        return repository.get(id, userId);
//    }
//
//    @Override
//    public void delete(int id, int userId) {
//        repository.delete(id, userId);
//    }
//
//    @Override
//    public void create(Product product, int userId) {
//        repository.save(product, userId);
//    }
//
//    @Override
//    public void update(Product product, int userId) {
//        repository.save(product, userId);
//    }
}
