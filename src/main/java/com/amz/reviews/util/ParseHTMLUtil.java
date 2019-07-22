package com.amz.reviews.util;

import com.amz.reviews.model.Image;
import com.amz.reviews.model.Product;
import org.jsoup.Jsoup;
import org.jsoup.nodes.DataNode;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.Element;

import java.io.File;
import java.time.LocalDateTime;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

public class ParseHTMLUtil {

    public static Product createAndUpdateProduct(String asin) {

        Document doc;

        String title = null;
        String image = null;
        Double price = 0.0;
        StringBuilder description = new StringBuilder("");

        try {
//            String url = String.format("https://www.amazon.com/dp/%s", asin);
//            doc = Jsoup.connect(url).get();
            File file = new File("C://Data//product.html");
            doc = Jsoup.parse(file, null);

            System.out.println(doc.title());

            title = doc.getElementById("productTitle").text();
            String sd ="";
            String tmp = doc.getElementById("priceblock_ourprice").text();
            price = Double.parseDouble((tmp.replace("$","")));

//            List<Element> elements = doc.getElementsByClass("a-unordered-list a-vertical a-spacing-none");
//            List<Element> elements1 = elements.get(0).getElementsByClass("a-list-item");
//
//            for(int i = 1; i < elements1.size(); i++) {
//                description.append(String.format("<li>%s</li>", elements1.get(i).text()));
//            }

            for (Element e : doc.getElementsByClass("a-unordered-list a-vertical a-spacing-none")) {
                for (Element el : e.getElementsByClass("a-list-item")) {
                    description.append(String.format("<li>%s</li>", el.ownText()));
                }
            }

            List<String> imagesSource = new ArrayList<>();

            for (Element scripts : doc.getElementsByTag("script")) {
                // get data from <script>
                for (DataNode dataNode : scripts.dataNodes()) {
                    // find data which contains jpg
                    if (dataNode.getWholeData().contains("'colorImages': { 'initial': [{\"hiRes\""))
                        imagesSource = Arrays.asList(dataNode.getWholeData().split("https://images-na.ssl-images-amazon.com/"));
                }
            }

            List<Image> images = new ArrayList<>();

            for(String s : imagesSource) {
                if (s.contains("1500") || s.contains("1200") || s.contains("1000") || s.contains("1280")) {
                    String[] sArray = s.split(".jpg");
                    images.add(new Image(null, String.format("https://images-na.ssl-images-amazon.com/%s.jpg", sArray[0])));
                }
            }

            image = images.get(0).getUrl();
            images.remove(0);

            if(title != null && price != 0.0 && image != null) {
                return new Product(null, LocalDateTime.now(), (title.length() >= 63) ? title.substring(0, 63) : title,
                        asin, title, price, description.toString(), image, images);
            }
        }
        catch (Exception ex) {
            System.out.println(ex.getMessage());
        }

        return null;
    }
}