package database;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
/**
 *
 * @author wladek
 */
import java.sql.*;
//import java.sql.Connection;
//import java.sql.DriverManager;
//import java.sql.SQLException;
import java.sql.Statement;
public class DBManager {
    private Connection con;
    //    private Statement st;
    //    private ResultSet rs;
    public void DBManager(){
	String url = "jdbc:mysql://localhost:3306/javaweb";
	String name = "root";
	String password = "th3gi0igac0n";
        try {
            Class.forName("com.mysql.jdbc.Driver");
            con = DriverManager.getConnection(url, name, password);
            
        } catch (Exception e) {
            System.out.println("Error: " + e);
        }
    }
    public ResultSet getWatches(String query){
//        int dem = 0;
        ResultSet rs = null;
        Statement st ;
        try {
            st = con.createStatement();
            rs = st.executeQuery(query);
        } catch (Exception e) {
            System.out.println(e);
        }
        return rs;
    }
    public ResultSet getWatchesByIdType(String id){
        ResultSet rs = null;
        Statement st;
        try {
            st = con.createStatement();
            String query = "SELECT * FROM chitietsanpham WHERE idType like ?";
            PreparedStatement preSta = con.prepareStatement(query);
            preSta.setString(1, id);
            rs = preSta.executeQuery();
            
        } catch (Exception e) {
        }
        return rs;
    }
    public ResultSet getWatchesSale(String limit){
        ResultSet rs = null;
        Statement st;
        try {
            st = con.createStatement();
            String query = "SELECT Name, IDProduct, Brand, PriceCurrent, PriceDefault, ((PriceDefault - PriceCurrent) / PriceDefault * 100) AS PriceSale, images FROM chitietsanpham ORDER BY PriceSale DESC LIMIT 15";
//            PreparedStatement preSta = con.prepareStatement(query);
//            preSta.setString(1, limit);
//            rs = preSta.executeQuery();
            rs = st.executeQuery(query);
        } catch (Exception e) {
        }
        return rs;
    }
    
    public ResultSet getWatchesById(String id){
        ResultSet rs = null;
        Statement st;
        try {
            st = con.createStatement();
            String query = "SELECT * FROM chitietsanpham WHERE IDProduct like ?";
            PreparedStatement preSta = con.prepareStatement(query);
            preSta.setString(1, id);
            rs = preSta.executeQuery();
            
        } catch (Exception e) {
        }
        return rs;
    }
    
    public ResultSet getWatchesByName(String name){
        ResultSet rs = null;
        Statement st;
        try {
            st = con.createStatement();
            String query = "SELECT * FROM chitietsanpham WHERE name like ?";
            PreparedStatement preSta = con.prepareStatement(query);
            name = "%" + name + "%";
            preSta.setString(1, name);
            rs = preSta.executeQuery();
            
        } catch (Exception e) {
        }
        return rs;
    }
    
    public ResultSet getUserById(String id){
        ResultSet rs = null;
        Statement st;
        try {
            st = con.createStatement();
            String query = "SELECT * FROM user WHERE id like ?";
            PreparedStatement preSta = con.prepareStatement(query);
            preSta.setString(1, id);
            rs = preSta.executeQuery();
            
        } catch (Exception e) {
        }
        return rs;
    }
    public ResultSet checkUserLogin(String email, String password){
        ResultSet rs = null;
        Statement st;
        try {
            st = con.createStatement();
            String query = "SELECT * FROM user WHERE username like ? AND password like ?";
            PreparedStatement pre = con.prepareStatement(query);
            pre.setString(1, email);
            pre.setString(2, password);
            rs = pre.executeQuery();
        } catch (Exception e) {
        }
        return rs;
    }
    public ResultSet GetUserByIdCookie(String id){
        ResultSet rs = null;
        Statement st;
        try {
            st = con.createStatement();
            String query = "SELECT * FROM user as t1 JOIN cookies AS t2 ON t1.id = t2.idUser WHERE t2.id = ?";
            PreparedStatement pre = con.prepareStatement(query);
            pre.setString(1, id);
            rs = pre.executeQuery();
        } catch (Exception e) {
        }
        return rs;
        
    }
    public void SaveCookiesLogin(String token, String id){
        Statement st;
        try {
            st = con.createStatement();
            String query = "INSERT INTO cookies (id, idUser) VALUES (?, ?)";
            PreparedStatement pre = con.prepareStatement(query);
            pre.setString(1, token);
            pre.setString(2, id);
            pre.execute();
        } catch (Exception e) {
        }
    }
    public void AddOrder(String id, String idUser, String idWatch){
        Statement st;
        try {
            st = con.createStatement();
            String query = "INSERT INTO `order` (id, idUser, idWatch, count) VALUES (?,?,?,?)";
            PreparedStatement pre = con.prepareStatement(query);
            pre.setString(1, id);
            pre.setString(2, idUser);
            pre.setString(3, idWatch);
            pre.setString(4, "1");
            pre.execute();
        } catch (Exception e) {
        }
    }
    public ResultSet GetOrder(String idUser){
        Statement st;
        ResultSet rs = null;
        try {
            st = con.createStatement();
            String query = "SELECT * FROM `cookies` AS t1 JOIN `order` AS t2 ON t1.idUser = t2.idUser WHERE t1.idUser like ?";
            PreparedStatement pre = con.prepareStatement(query);
            pre.setString(1, idUser);
            rs = pre.executeQuery();
        } catch (Exception e) {
        }
        
        return rs;
    }
    
    public void disconnect(){
        try {
            con.close();
            System.out.println("Da Ngat Ket Noi");
        } catch (SQLException ex) {
            System.out.println("Ly Do :"+ex.toString());
        }
    }
}
