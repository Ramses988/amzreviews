package com.amz.reviews.model;

import javax.persistence.MappedSuperclass;
import java.time.LocalDateTime;

@MappedSuperclass
public abstract class AbstractNamedEntity extends AbstractDateEntity {

    protected String name;

    protected AbstractNamedEntity() {}

    protected AbstractNamedEntity(Integer id, LocalDateTime date, String name) {
        super(id, date);
        this.name = name;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }
}
