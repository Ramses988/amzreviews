<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<jsp:include page="../fragments/_header.jsp" />
<jsp:include page="../fragments/_menu.jsp" />


<section class="section section-50 bg-lighter novi-background">
    <jsp:useBean id="order" scope="request" type="com.amz.reviews.model.Order" />

    <div class="owl-carousel owl-theme">
        <div><img src="${order.product.image}" alt="" /></div>
        <c:forEach items="${order.product.images}" var="image">
            <div><img src="${image.getUrl()}" alt="" /></div>
        </c:forEach>
    </div>

    <div class="container">
        <h2 class="text-left">${order.product.title}</h2>
        <div>
            <div class="row row-65 row-fix">
                <div class="col-lg-7 col-xl-8">
                    <div class="text-md-left offset-top-50">
                        <h5 class="font-weight-bold">Описание</h5>
                        <ul>
                            <li>AN ELEGANT PRESENTATION. Whether you are toasting to the 7th successful year of your friendship, wedding anniversary or business, hosting a formal gathering or thinking of a perfect gift for a whiskey enthusiast, RMOB WHISKY GLASSES will be your #1 CHOICE!</li>
                            <li>BEAUTIFUL AND ERGONOMIC DESIGN. Elegant and understated, these glasses are designed with the focus on “beauty and simplicity”. The design makes them really durable, so they’re great for special occasions as well as everyday use. Each holds an impressive 11 oz of your favorite pour, so you can get a pretty nice size drink!</li>
                            <li>EXPERT CRAFTSMANSHIP. RMOB Whiskey Glasses are hand blown from the world's most transparent and lustrous glass, giving them maximum clarity and brilliance. They are 100% lead free, laser engraved and features an oversized, weighted bottom for a good feel in your hand!</li>
                            <li>MAKES A STATELY GIFT. Surprise your loving whiskey connoisseurs on their birthdays, anniversaries, Christmas or thanksgiving with RMOB Whiskey Glasses. The quotes "Limited Edition”, “Vintage" and "Aged to Perfection" will make them feel great while they are enjoying their favorite aged spirits!</li>
                            <li> WE ARE HERE FOR YOU. We have made a complete commitment in making you happy with your purchase. but for any reason, if you are not completely satisfied, simply let us know and we do everything to make you 100% satisfied with your purchase. SO WHY WAIT? CHOOSE US TODAY!</li>
                        </ul>
                    </div>
                    <div class="offset-top-30">
                        <!-- Bootstrap Table-->

                    </div>
                </div>
                <div class="col-lg-5 col-xl-4 text-lg-left inset-lg-left-30">
                    <div class="row row-50-new">
                        <div class="col-sm-12">
                            <div class="offset-top-20">
                                ASIN: ${order.product.asin}
                            </div>
                            <div class="offset-top-20 text-gr">
                                Ключ для выкупа: "${order.key}"
                            </div>
                            <div class="offset-top-20 text-gr">
                                Выкуп с отзывом
                            </div>
                            <div class="offset-top-20">
                                <h5 class="font-weight-bold price">Цена: &#36;${order.price}</h5>
                            </div>
                        </div>
                        <div class="col-sm-12"><a class="btn btn-primary-orange" href="#">Выкупить продукт</a>
                            <div class="offset-top-10"><a class="btn btn-info" href="#">Перейти на Amazon</a></div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>


</section>

<jsp:include page="../fragments/_footer.jsp" />