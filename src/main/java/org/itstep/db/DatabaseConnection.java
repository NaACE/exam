package org.itstep.db;

import java.sql.*;
import java.util.LinkedList;
import java.util.List;

public class DatabaseConnection {
    final static String USER="root";
    final static String PASS="";
    final static String HOST="127.0.0.1";
    final static int PORT=3306;
    final static String DBNAME="barbershop";

    Connection connection=null;
    private DatabaseConnection(){
        try{
            Class.forName("com.mysql.cj.jdbc.Driver");
            String connstr = String.format("jdbc:mysql://%s:%d/%s?useUnicode=true&useJDBCCompliantTimezoneShift=true&useLegacyDatetimeCode=false&serverTimezone=UTC",HOST,PORT,DBNAME);
            System.out.println(connstr);
            connection = DriverManager.getConnection(connstr,USER, PASS);
        }catch (Exception e){
            e.printStackTrace();
        }
    }

    private static DatabaseConnection inst = null;
    public synchronized static DatabaseConnection instance(){
        if(inst==null) inst = new DatabaseConnection();
        return inst;
    }


    public <T> List<T> fetchAllQuery(String query,Transformer<T> transformer){
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
