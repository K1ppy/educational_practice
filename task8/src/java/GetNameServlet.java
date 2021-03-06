package com;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/get")
public class GetNameServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String name = req.getParameter("name");

        if (name == null || name.length() == 0)
            name = "No name";
        else if (name.length() > 100)
            name = name.substring(0,100) + "\n\n Name can't be more than 100 characters";

        resp.getOutputStream().println("<html><h2>" + name + "</h2></html>");
    }
}