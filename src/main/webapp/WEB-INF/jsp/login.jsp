<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@taglib prefix="reviews" tagdir="/WEB-INF/tags" %>

<reviews:genericPage>
    <jsp:attribute name="title"><spring:message code="user.sign"/></jsp:attribute>
    <jsp:attribute name="scripts">
        <script src="/resources/js/bootstrap.bundle.min.js"></script>
    </jsp:attribute>
    <jsp:body>
                <!--Section Sign In-->
        <section class="section section-34 section-bottom-66 bg-default novi-background">
            <div class="container">
                <h3><spring:message code="user.sign"/></h3>
                <hr class="divider bg-saffron">
                <c:if test="${param.error}">
                    <div class="error-enter">${sessionScope["SPRING_SECURITY_LAST_EXCEPTION"].message}</div>
                </c:if>
                <div>
                    <div class="responsive-tabs responsive-tabs-classic">
                        <div class="resp-tabs-container tabs-group-default">
                            <div>
                                <div class="row row-fix justify-content-sm-center">
                                    <div class="col-sm-8 col-md-6 col-lg-4">

                                        <form:form class="rd-form text-left" method="POST" action="spring_security_check">
                                            <div class="form-group">
                                                <label class="form-label form-label-outside" for="form-login-username">Email:</label>
                                                <input class="form-control bg-white" id="form-login-username" type="text" name="username" required="true">
                                            </div>
                                            <div class="form-group offset-top-24">
                                                <label class="form-label form-label-outside" for="form-login-password"><spring:message code="login.password"/>:</label>
                                                <input class="form-control bg-white" id="form-login-password" type="password" name="password" required="true">
                                            </div>
                                            <div class="offset-top-24">
                                                <button class="btn btn-primary-orange btn-block" type="submit"><spring:message code="user.login"/></button>
                                            </div>
                                            <div class="form-group offset-top-24">
                                                <a href="/register" class="page-login"><spring:message code="user.register"/></a>
                                                <a href="javascript:void(0)" class="page-login" id="reset-password"><spring:message code="login.forgot"/></a>
                                            </div>
                                        </form:form>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>

        <!-- Modal Windows -->

        <div class="modal reset-modal">
            <div class="modal-container">
                <div class="modal-header">
                    <h4 class="modal-title modalTitle"><spring:message code="customer.recovery"/></h4>
                    <button type="button" class="close popup-close" data-dismiss="modal">&times;</button>
                </div>
                <div class="modal-body">
                    <form id="detailsFormReset">
                        <label class="col-form-label"><spring:message code="customer.enter-email"/><span id="help-reset" class="icon novi-icon mdi mdi-help-circle-outline" title='<spring:message code="customer.reset"/>'></span></label>
                        <input name="email" class="form-control" placeholder="Email" autocomplete="off" type="text">
                    </form>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn-small btn-primary-orange btn-reset"><spring:message code="btn.continue"/></button>
                    <button class="btn-small btn-primary-grey btn-cancel"><spring:message code="btn.cancel"/></button>
                </div>
            </div>
        </div>

        <div class="modal info-modal">
            <div class="modal-container">
                <div class="modal-header">
                    <h4 class="modal-title modalTitle"><img id="Success" src="/resources/images/ok.png" alt="OK"/>
                        <spring:message code="customer.received"/></h4>
                    <button type="button" class="close popup-close" data-dismiss="modal">&times;</button>
                </div>
                <div class="modal-body">
                    <p><spring:message code="customer.send-ins"/></p>
                </div>
                <div class="modal-footer">
                    <button class="btn-small btn-primary-orange btn-cancel">Ok</button>
                </div>
            </div>
        </div>

        <script>
            $('#help-reset').tooltip();
        </script>
    </jsp:body>
</reviews:genericPage>