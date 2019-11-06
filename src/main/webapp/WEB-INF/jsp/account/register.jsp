<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@taglib prefix="reviews" tagdir="/WEB-INF/tags" %>

<reviews:genericPage>
    <jsp:attribute name="title"><spring:message code="register.register"/></jsp:attribute>
    <jsp:attribute name="scripts">
        <script src="/resources/js/noty.min.js"></script>
        <script src="/resources/js/noty.valid.js"></script>
        <script src="/resources/js/bootstrap.bundle.min.js"></script>
    </jsp:attribute>
    <jsp:body>

        <section class="section section-34 section-bottom-66 bg-default novi-background">
            <div class="container">
                <h3><spring:message code="register.register"/></h3>
                <hr class="divider bg-saffron">
                <div>
                    <div class="row row-fix justify-content-sm-center">
                        <div class="col-sm-8 col-md-6 col-lg-4">
                            <!-- RD Mailform-->
                            <form:form class="rd-form text-left" id="userRegister">
                                <div class="form-group">
                                    <label class="form-label form-label-outside" for="name"><spring:message code="register.name"/>:</label>
                                    <input class="form-control bg-white required lenth" id="name" type="text" name="name" autocomplete="off">
                                    <span class="form-validation"></span>
                                </div>
                                <div class="form-group">
                                    <label class="form-label form-label-outside" for="email">Email:</label>
                                    <input class="form-control bg-white required lenth email" id="email" type="text" name="email" autocomplete="off">
                                    <span class="form-validation"></span>
                                </div>
                                <div class="form-group">
                                    <label class="form-label form-label-outside" for="password"><spring:message code="register.password"/>:</label>
                                    <input class="form-control bg-white required password" id="password" type="password" name="password">
                                    <span class="form-validation"></span>
                                </div>
                                <div class="form-group">
                                    <label class="form-label form-label-outside" for="confirmPassword"><spring:message code="register.repeat"/>:</label>
                                    <input class="form-control bg-white required password" id="confirmPassword" type="password" name="confirmPassword">
                                    <span class="form-validation"></span>
                                </div>
                                <div class="form-group offset-top-24">
                                    <label class="form-label-outside registr"><spring:message code="register.select"/>:
                                        <span id="help-role" class="icon novi-icon mdi mdi-help-circle-outline" title='<spring:message code="register.role_text"/>'></span>
                                    </label>
                                    <select name="roles">
                                        <option value="shopper"><spring:message code="register.shopper"/></option>
                                        <option value="seller"><spring:message code="register.seller"/></option>
                                    </select>
                                </div>
                                <div class="form-group offset-top-24">
                                    <label class="form-label-outside registr"><spring:message code="register.country"/>:</label>
                                    <select name="country">
                                        <option value="US">United States</option>
                                        <option value="UK">United Kingdom</option>
                                        <option value="BR">Brazil</option>
                                        <option value="CN">Canada</option>
                                        <option value="FR">France</option>
                                        <option value="GM">Germany</option>
                                        <option value="IT">Italy</option>
                                        <option value="JP">Japan</option>
                                        <option value="MX">Mexico</option>
                                        <option value="SP">Spain</option>
                                        <option value="RU">Russia</option>
                                        <option value="UK">Ukraine</option>
                                        <option value="OT">Other</option>
                                    </select>
                                </div>
                                <div class="offset-top-24">
                                    <button class="btn btn-primary-orange btn-block btn-register" type="button"><spring:message code="user.register"/></button>
                                </div>
                            </form:form>
                        </div>
                    </div>
                </div>
            </div>
        </section>

        <script>
            $('#help-role').tooltip();
        </script>
    </jsp:body>
</reviews:genericPage>