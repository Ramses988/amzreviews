package com.amz.reviews.util.exception;

public class NotFoundException extends RuntimeException{

    private final String type;

    public NotFoundException(String type, String msg) {
        super(msg);
        this.type = type;
    }

    public String getType() {
        return type;
    }
}