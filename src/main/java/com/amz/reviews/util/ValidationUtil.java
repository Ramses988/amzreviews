package com.amz.reviews.util;

import com.amz.reviews.util.exception.NotFoundException;

import java.util.Objects;

public class ValidationUtil {

    public static <T> void checkNotFound(T object) {
        if(Objects.isNull(object))
            throw new NotFoundException("", "");
    }
}
