package com.example.server_time;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.Date;

@WebServlet(name = "serverTimeServlet", value = "/today-time")
public class ServerTimeServlet extends HttpServlet {
    protected void doPost(HttpServletRequest rq, HttpServletResponse rp){

    }
    protected void doGet(HttpServletRequest rq, HttpServletResponse rp) throws IOException {
        PrintWriter writer = rp.getWriter();
        writer.println("<html>");
        Date today = new Date();
        writer.println("<h1>" + today + "</h1>");
        writer.println("</html>");
    }

}
