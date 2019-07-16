package com.amz.reviews.model;

import org.springframework.format.annotation.DateTimeFormat;

import javax.persistence.MappedSuperclass;
import java.time.LocalDateTime;

@MappedSuperclass
public abstract class AbstractDateEntity extends AbstractBaseEntity {

    @DateTimeFormat
    protected LocalDateTime date;

    public  AbstractDateEntity() {}

    protected AbstractDateEntity(Integer id, LocalDateTime date) {
        super(id);
        this.date = date;
    }

    public LocalDateTime getDate() {
        return date;
    }

    public void setDate(LocalDateTime date) {
        this.date = date;
    }
}
