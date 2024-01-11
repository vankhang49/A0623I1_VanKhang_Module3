package com.example.productdiscountcalculator;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet(name="CalculateDiscount", urlPatterns = "/display-discount")
public class CalculateDiscountServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        PrintWriter writer = resp.getWriter();
        writer.println("<html>");
        String des = req.getParameter("txtDescription");
        double listPrice = Double.parseDouble(req.getParameter("txtListPrice"));
        double discountPercent = Double.parseDouble(req.getParameter("txtDiscountPercent"));

        double discountAmount = listPrice * discountPercent * 0.01 ;
        double discountPrice = listPrice - discountAmount;

        writer.println("Description: " + des + "<br>");
        writer.println("List price: " + listPrice + "<br>");
        writer.println("Discount Percent: " + discountPercent + "<br>");

        writer.println("Discount Amount: " + discountAmount + "<br>");
        writer.println("Discount Price: " + discountPrice);

        writer.println("</html>");
    }
}
