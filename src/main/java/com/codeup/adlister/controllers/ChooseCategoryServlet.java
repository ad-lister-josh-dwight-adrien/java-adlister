package com.codeup.adlister.controllers;

import com.codeup.adlister.dao.DaoFactory;
import com.codeup.adlister.models.Cat_Ad;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.awt.*;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;

@WebServlet (urlPatterns = "/ads/category")
public class ChooseCategoryServlet extends HttpServlet {

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        if (request.getSession().getAttribute("user") == null) {
            response.sendRedirect("/login");
            return;
        }
        request.getRequestDispatcher("/WEB-INF/ads/category.jsp")
                .forward(request, response);
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {
        String[] categories;
        categories = request.getParameterValues("category");
//        System.out.println(Arrays.toString(categories));
        for (String category : categories) {
            System.out.println("category = " + category);
            Cat_Ad cat_ad = new Cat_Ad(
                    Long.parseLong(category),
                    2
            );
            DaoFactory.getCat_AdsDao().insert(cat_ad);
        }
        response.sendRedirect("/profile");

    }
}
