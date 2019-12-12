package com.amz.reviews.util;

import com.amz.reviews.model.Image;
import com.amz.reviews.model.Product;
import com.amz.reviews.to.ProductTo;

import java.time.LocalDateTime;
import java.util.Arrays;
import java.util.List;
import java.util.stream.Collectors;

public class ProductUtil {

    public static Product createProductFromTo(ProductTo productTo) {
        List<Image> images = Arrays.stream(productTo.getImages().split(";")).map(i -> new Image(null, i)).collect(Collectors.toList());
        return new Product(null, LocalDateTime.now(), (productTo.getTitle().length() >= 63) ? productTo.getTitle().substring(0, 63) : productTo.getTitle(),
                productTo.getAsin(), productTo.getTitle(), productTo.getPrice(), productTo.getDescription(), productTo.getImage(), images);
    }

}
