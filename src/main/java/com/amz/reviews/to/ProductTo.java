package com.amz.reviews.to;

public class ProductTo {

    private String title;
    private String asin;
    private String image;
    private String images;
    private double price;
    private String description;

    public ProductTo(String title, String asin, String image, String images, double price, String description) {
        this.title = title;
        this.asin = asin;
        this.image = image;
        this.images = images;
        this.price = price;
        this.description = description;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getAsin() {
        return asin;
    }

    public void setAsin(String asin) {
        this.asin = asin;
    }

    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image;
    }

    public String getImages() {
        return images;
    }

    public void setImages(String images) {
        this.images = images;
    }

    public double getPrice() {
        return price;
    }

    public void setPrice(double price) {
        this.price = price;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }
}
