package org.itstep;

import org.itstep.db.DatabaseConnection;
import org.itstep.db.MyDatabase;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;

@WebServlet("/")
public class HomeServlet extends HttpServlet {
    List<Masters> master;
    List<Services> service;

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        /* посылаем данные в db/MyDatabase.java */
        master = MyDatabase.instance().fetchAllQuery("SELECT * FROM masters", set->
                new Masters(set.getString("name"),set.getString("img"))
        );
        service = MyDatabase.instance().fetchAllQuery("SELECT * FROM services", set ->
                new Services(set.getString("name"),set.getString("price"),set.getString("times"))
        );

        req.setAttribute("master", master);
        req.setAttribute("service", service);
        /* отправляем данные в /WEB-INF/view/index.jsp*/
        req.getRequestDispatcher("/WEB-INF/view/index.jsp")
                .forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        super.doPost(req, resp);
    }
}