package com.amz.reviews.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Table;

@Entity
@Table(name = "articles")
public class Article extends AbstractNamedEntity {

    @Column(name = "headline_ru")
    private String headlineRu;

    @Column(name = "headline_us")
    private String headlineUs;

    @Column(name = "text_ru")
    private String textRu;

    @Column(name = "text_us")
    private String textUS;

    public String getHeadlineRu() {
        return headlineRu;
    }

    public void setHeadlineRu(String headlineRu) {
        this.headlineRu = headlineRu;
    }

    public String getHeadlineUs() {
        return headlineUs;
    }

    public void setHeadlineUs(String headlineUs) {
        this.headlineUs = headlineUs;
    }

    public String getTextRu() {
        return textRu;
    }

    public void setTextRu(String textRu) {
        this.textRu = textRu;
    }

    public String getTextUS() {
        return textUS;
    }

    public void setTextUS(String textUS) {
        this.textUS = textUS;
    }
}
