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
import java.util.Properties;

@WebServlet("/")
public class HomeServlet extends HttpServlet {
    List<Masters> master;
    List<Services> service;

    String sqlite = "jdbc:sqlite:database.db";

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        /* посылаем данные в db/MyDatabase.java */
        master = MyDatabase.instance().fetchAllQuery("SELECT * FROM masters", set->
                new Masters(set.getString("name"),set.getString("img"))
        );
        service = MyDatabase.instance().fetchAllQuery("SELECT * FROM services", set ->
                new Services(set.getString("name"),set.getString("price"))
        );

        req.setAttribute("master", master);
        req.setAttribute("service", service);
        /* отправляем данные в /WEB-INF/view/index.jsp*/
        req.getRequestDispatcher("/WEB-INF/view/index.jsp")
                .forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String master = req.getParameter("name_master");
        String services = req.getParameter("name_services");

        try(Connection connection = DriverManager.getConnection(sqlite)) {
            String sql = "INSERT INTO all_client(master,services) VALUES(?,?)";
            PreparedStatement statement = connection.prepareStatement(sql);
            statement.setString(1, master);
            statement.setString(2, services);
            statement.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        resp.sendRedirect("/");
    }
}