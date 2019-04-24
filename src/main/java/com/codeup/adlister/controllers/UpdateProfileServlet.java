package com.codeup.adlister.controllers;

import com.codeup.adlister.dao.DaoFactory;
import com.codeup.adlister.models.User;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;


    @WebServlet(name = "controllers.UpdateProfileServlet", urlPatterns = "/profile/configurations")
    public class UpdateProfileServlet extends HttpServlet {
        protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
            request.getRequestDispatcher("/WEB-INF/profile-config.jsp").forward(request, response);
        }

        protected void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {
            String username = request.getParameter("username");
            String email = request.getParameter("email");
            String password = request.getParameter("password");


          //Need to get current user session username, email, password and replace.



            User user = new User(username, email, password);
            DaoFactory.getUsersDao().update(user);
            response.sendRedirect("/login");


        }
    }


