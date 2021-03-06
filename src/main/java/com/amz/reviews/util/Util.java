package com.amz.reviews.util;

import java.math.BigDecimal;
import java.math.RoundingMode;

public class Util {
    public static double round(double value) {
        BigDecimal bd = new BigDecimal(Double.toString(value));
        bd = bd.setScale(2, RoundingMode.HALF_UP);
        return bd.doubleValue();
    }
}