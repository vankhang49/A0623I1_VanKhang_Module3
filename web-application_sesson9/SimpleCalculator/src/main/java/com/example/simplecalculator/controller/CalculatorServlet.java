package com.example.simplecalculator.controller;

import com.example.simplecalculator.model.Calculate;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet(name="CalculatorServlet", value = "/calculator")
public class CalculatorServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        super.doGet(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        double first = Double.parseDouble(req.getParameter("firstOP"));
        String operator = req.getParameter("operator");
        double second = Double.parseDouble(req.getParameter("secondOP"));

        resp.setContentType("text/html");
        PrintWriter writer = resp.getWriter();
        writer.println("<html><body>");
        writer.println("<h1>Result:</h1>");
        String txtResult = "";
        try {
            txtResult = Calculate.cal(first, second, operator);
            writer.println("<span>"+ first + " " + operator + " " + second + " = " + txtResult +"</span>");
        } catch (Exception e){
            writer.println("error: " + e.getMessage());
        }
        writer.println("</body></html>");
    }
}
