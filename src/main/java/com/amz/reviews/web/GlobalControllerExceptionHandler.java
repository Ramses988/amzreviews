package com.amz.reviews.web;

import org.springframework.http.HttpStatus;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.servlet.ModelAndView;

@ControllerAdvice
public class GlobalControllerExceptionHandler {

//    @ExceptionHandler(NotFoundException.class)
//    public ModelAndView notFoundErrorHandler(Exception e) {
//        ModelAndView mav = new ModelAndView("exception/exception");
//        mav.addObject("typeMessage", e.getMessage());
//        return mav;
//    }

    @ExceptionHandler(Exception.class)
    public ModelAndView defaultErrorHandler() {
        ModelAndView mav = new ModelAndView("exception/404");
        mav.setStatus(HttpStatus.NOT_FOUND);
        mav.addObject("typeMessage", "");
        mav.addObject("message", "<img class='not-found' src='/resources/images/404.png'/>");
        return mav;
    }
}
