package com.amz.reviews.util;

public enum Status {
    RESERVED("Reserved"),
    BOUGHT("Bought"),
    COMPLETED("Completed");

    private String status;

    Status(String status) {
        this.status = status;
    }

    public String getStatus() {
        return status;
    }
}