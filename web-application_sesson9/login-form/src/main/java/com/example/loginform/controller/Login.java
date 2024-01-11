package com.example.loginform.controller;

import com.example.loginform.model.EmployeesAcount;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;

@WebServlet (name = "Restaurant", urlPatterns = "/restaurant")
public class Login extends HttpServlet {
    private static List<EmployeesAcount> employeesAcountList;
    static {
        employeesAcountList = new ArrayList<>();
        employeesAcountList.add(new EmployeesAcount("admin", "admin"));
        employeesAcountList.add(new EmployeesAcount("vankhang49", "VanKhang"));
        employeesAcountList.add(new EmployeesAcount("manager", "manager"));
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        super.doGet(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String username = req.getParameter("username");
        String password = req.getParameter("password");
        for (EmployeesAcount emp: employeesAcountList) {
            if (emp.getUsername().equals(username) && emp.getPassword().equals(password)){
                req.getRequestDispatcher("/main.jsp").forward(req, resp);
            }else {
                resp.setContentType("text/html");
                PrintWriter writer = resp.getWriter();
                writer.println("<html><body>");
                writer.println("<h1>Username does not exist or password is wrong!</h1>");
                writer.println("</body></html>");
            }
        }
    }
}
