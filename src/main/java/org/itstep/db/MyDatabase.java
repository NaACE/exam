package org.itstep.db;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import java.sql.*;
import java.util.LinkedList;
import java.util.List;

public class MyDatabase extends HttpServlet {
    public static final String connectionString = "jdbc:sqlite:database.db";
    final static String userName = "root";
    final static String password = "";

    Connection connection=null;
    private MyDatabase(){
        try{
            connection = DriverManager.getConnection(connectionString, userName, password);
        }catch (Exception e){
            e.printStackTrace();
        }
    }

    private static MyDatabase inst = null;
    public synchronized static MyDatabase instance(){
        if(inst==null) inst = new MyDatabase();
        return inst;
    }


    public <T> List<T> fetchAllQuery(String query, Transformer<T> transformer){
        List<T> data = new LinkedList<>();
        try {
            Statement stmt = connection.createStatement();
            ResultSet resultSet = stmt.executeQuery(query);
            while (resultSet.next()){
                try {
                    data.add(transformer.transform(resultSet));
                }catch (Exception e){
                    e.printStackTrace();
                }
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return data;
    }


    public interface Transformer<T>{
        T transform(ResultSet set) throws Exception;
    }

    @Override
    protected void finalize() throws Throwable {
        connection.close();
    }
}