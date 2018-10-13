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

    String connectionString = "jdbc:sqlite:database.db";
    String userName = "root";
    String password = "";

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
        String name_master = req.getParameter("name_master");
        String name_services = req.getParameter("name_services");

        if(name_services != "") {
            try(Connection connection = DriverManager.getConnection(connectionString, userName, password)) {
                String sql = "insert into all_client(master,services) value (?,?)";
                try(PreparedStatement statement = connection.prepareStatement(sql)) {
                    statement.setString(1,name_master);
                    statement.setString(2,name_services);
                    statement.execute();
                }
            } catch (SQLException e) {
                e.printStackTrace();
            }
        } resp.sendRedirect("/");

        super.doGet(req, resp);
    }
}