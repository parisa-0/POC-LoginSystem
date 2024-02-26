package org.example;

import java.sql.*;

public class DatabaseLibrary {
    private final String URL = "jdbc:mysql://localhost/LoginSystem";
    private final String USER = "root";
    private String PW = "password";


    public String findUser(String name) {
        String sql = "select Username, password";
        sql = sql + " from Users where UserName = ?;";
        try {
            Connection con = DriverManager.getConnection(URL, USER, PW);
            PreparedStatement stmt = con.prepareStatement(sql);
            stmt.setString(1,name); //parameter number is number of question marks
            ResultSet rs = stmt.executeQuery();
            while(rs.next()) {
               return rs.getString("Username");
            }
            con.close();
            stmt.close();
        }
        catch(Exception e) {
            System.out.println("Database error" + e);
        }
        return null;
    }

    public void insertUser(String username) {
        String sql = "insert into Users (Username, password) values (?, null)";
        try {
            Connection con = DriverManager.getConnection(URL, USER, PW);
            PreparedStatement stmt = con.prepareStatement(sql);


            stmt.setString(1,username);

            stmt.executeUpdate();

            stmt.close();
            con.close();

            System.out.println("User successfully created!");
        } catch (Exception e) {
            System.out.println("Database error" + e);
        }
    }

    public void updatePassword(String username, String password) {
        String sql = "update Users set password = ?";
        sql = sql + " where username = ?;";
        try {
            Connection con = DriverManager.getConnection(URL, USER, PW);
            PreparedStatement stmt = con.prepareStatement(sql);
            stmt.setString(1,password); //parameter number is number of question marks
            stmt.setString(2,username);
            stmt.executeUpdate();

            con.close();
            stmt.close();
            System.out.println("Password successfully updated!");
        }
        catch(Exception e) {
            System.out.println("Database error" + e);
        }
    }

    public String findPassword(String password) {
        String sql = "select Username, password";
        sql = sql + " from Users where password = ?;";
        try {
            Connection con = DriverManager.getConnection(URL, USER, PW);
            PreparedStatement stmt = con.prepareStatement(sql);
            stmt.setString(1,password); //parameter number is number of question marks
            ResultSet rs = stmt.executeQuery();
            while(rs.next()) {
                return rs.getString("password");
            }
            con.close();
            stmt.close();
        }
        catch(Exception e) {
            System.out.println("Database error" + e);
        }
        return null;
    }

}
