package com.example.customerlist.controller;

import com.example.customerlist.model.Customers;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

@WebServlet(name="listCustomer", urlPatterns = "/listCustomer")
public class ListCustomerServlet extends HttpServlet {
    private static List<Customers> customersList;
    static {
        customersList = new ArrayList<>();
        customersList.add(new Customers("Trần Tấn Thành", "18-03-2003", "Đà Nẵng", "img_1.jpg"));
        customersList.add(new Customers("Nguyễn Đức Dũng", "19-03-2003", "Thanh Hoá", "img_2.jpg"));
        customersList.add(new Customers("Đinh Văn Khang", "04-09-2000", "Đà Nẵng", "img_3.jpg"));
        customersList.add(new Customers("Nguyễn Văn A", "30-04-1999", "Nghệ An", "img_4.jpg"));
        customersList.add(new Customers("Nguyễn Quốc Khánh", "02-09-2005", "Hồ Chí Minh", "img_5.jpg"));
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setAttribute("customersList", customersList);
        req.getRequestDispatcher("/listCustomer.jsp").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        super.doPost(req, resp);
    }
}
