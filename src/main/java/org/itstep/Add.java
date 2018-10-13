package org.itstep;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.*;

@WebServlet("/add")
public class Add extends HttpServlet {

    String connectionString = "jdbc:sqlite:database.db";
    String userName = "root";
    String password = "";

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String name_master = req.getParameter("name_master");
        String name_services = req.getParameter("name_services");

        if(name_master != "" & name_services != "") {
            try (Connection conn = DriverManager.getConnection(connectionString, userName, password)) {
                String sql = "INSERT INTO all_client (master, services) VALUE (?,?)";
                try (PreparedStatement statement = conn.prepareStatement(sql)) {
                    statement.setString(1, name_master);
                    statement.setString(2, name_services);
                    statement.execute();
                }
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
        resp.sendRedirect("/");
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.getRequestDispatcher("/WEB-INF/view/add.jsp")
                .forward(req, resp);
    }
}
