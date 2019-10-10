package com.amz.reviews.service;

import com.amz.reviews.model.Order;
import com.amz.reviews.model.Product;
import com.amz.reviews.model.User;
import com.amz.reviews.repository.ProductRepository;
import com.amz.reviews.to.OrderTo;
import com.amz.reviews.util.Mail;
import com.amz.reviews.util.Status;
import com.amz.reviews.util.Util;
import com.amz.reviews.util.ValidationUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.time.LocalDateTime;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import com.amz.reviews.util.exception.ApplicationException;

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

    @Autowired
    private MailSender mailSender;

    @Override
    @Transactional
    public void sellerCreateOrders(OrderTo orderTo, int userId) {
        Product product = sellerGetProduct(orderTo.getId(), userId);
        User user = getUser(userId);

        if(Objects.nonNull(product) && Objects.nonNull(user)) {
            double fees = (orderTo.isReview()) ? 5 : 3;
            double priceAndFees = product.getPrice() + fees;
            double priceFees = (priceAndFees / 100) * 5;
            double totalPrice = priceAndFees + priceFees;
            double totalPriceWithCount = totalPrice * orderTo.getCount();

            if(product.getCountOrders() > 0)
                throw new ApplicationException("У Вас уже есть заявки на выкуп в очереди!");
            if(user.getBalance() < 0)
                throw new ApplicationException("У Вас недостаточно средств для выкупов. Пополните баланс!");
            if(user.getBalance() == 0 && orderTo.getCount() > 1)
                throw new ApplicationException("При нулевом балансе Вы можете сделать только один выкуп!");
            if(user.getBalance() > 0 && (user.getBalance() - totalPriceWithCount) < 0 && orderTo.getCount() > 1)
                throw new ApplicationException(String.format("Недостаточно средств для %d выкупов, уменьшите количество!", orderTo.getCount()));

            product.setKey(orderTo.getKey());
            product.setCountOrders(orderTo.getCount());
            product.setReviewEnable(orderTo.isReview());
            product.setDateOfChange(LocalDateTime.now());
            product.setPriceWithInterest(Util.round(totalPrice));
            productRepository.save(product);
        }
    }

    @Override
    public Product customerGetProduct(int productId) {
        Product product = productRepository.getCustomer(productId);
        ValidationUtil.checkNotFound(product);

        if(product.getCountOrders() > 0) {
            return product;
        }
        throw new ApplicationException("Продукт закончился!");
    }

    private Product getProductWithUser(int productId) {
        Product product = productRepository.getProductWithUser(productId);
        ValidationUtil.checkNotFound(product);

        if(product.getCountOrders() > 0) {
            return product;
        }
        throw new ApplicationException("Продукт закончился!");
    }

    private User getUser(int userId) {
        return userService.getOne(userId);
    }

    @Override
    public Product sellerGetProduct(int productId, int userId) {
        Product product = productRepository.sellerGetProduct(productId, getUser(userId));
        ValidationUtil.checkNotFound(product);
        return product;
    }

    @Override
    public Product sellerGetProductWithImages(int productId, int userId) {
        Product product = productRepository.sellerGetProductWithImages(productId, userId);
        ValidationUtil.checkNotFound(product);
        return product;
    }

    @Override
    public List<Product> sellerGetAllProducts(int userId) {
        return productRepository.sellerGetAllProducts(getUser(userId));
    }

    @Override
    public List<Product> customerGetActiveProducts() {
        return productRepository.getActiveProducts();
    }

    @Override
    @Transactional
    public void sellerDeleteProduct(Integer id, int userId) {
        if (Objects.nonNull(id)) {
            Product product = productRepository.sellerGetProduct(id, getUser(userId));

            if(Objects.nonNull(product) && product.getCountOrders() == 0 && product.getActiveOrders() == 0) {
                product.setUser(getUser(1));
                productRepository.save(product);
            }
        }
    }

    @Override
    @Transactional
    public void customerReserve(String productId, int userId) {
        if(Objects.nonNull(productId)) {
//            Product product = getProductWithUser(Integer.parseInt(productId.replace("id=", "")));
            Product product = getProductWithUser(Integer.parseInt(productId));
            Order order = orderService.customerGetOrderForProduct(product, getUser(userId));

            if(Objects.isNull(order)) {
                Order newOrder = new Order(null, LocalDateTime.now(), product.getName(), product.getPrice(),
                        Status.RESERVED.getStatus(), product.getKey(), product.isReviewEnable(), getUser(userId), product,
                        product.getUser().getBalance() - product.getPriceWithInterest() >= 0);
                product.setCountOrders(product.getCountOrders() - 1);
                product.setActiveOrders(product.getActiveOrders() + 1);
                product.getUser().setBalance(Util.round(product.getUser().getBalance() - product.getPriceWithInterest()));
                productRepository.save(product);
                orderService.save(newOrder);
            } else
                throw new ApplicationException("Вы уже выкупали этот продукт!");
        }
    }

    @Override
    public void sellerCreateProduct(String asin, int userId) {
        if(Objects.nonNull(asin)) {
            Map<String, Object> values = new HashMap<>();
            values.put("user", userId);
            values.put("asin", asin);

            Mail mail = new Mail("Ramses988@gmail.com", "Запрос на добавление продукта", "add_product", values);
            mailSender.send(mail);
        }

//        Product product = ParseHTMLUtil.createAndUpdateProduct(asin);
//        if(Objects.nonNull(product)) {
//            product.setCountOrders(0);
//            product.setActiveOrders(0);
//            product.setCompletedOrders(0);
//            product.setUser(getUser(userId));
//
//            productRepository.save(product);
//
//            product.getImages().forEach(i -> i.setProduct(product));
//
//            imageService.saveAll(product.getImages());
//        }
    }
}
