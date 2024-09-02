/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */



package app;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class ConnectionProvider {
static Connection con;
    public ConnectionProvider(){}

    String username = "postgres";
    String pwd = "1234";
    private static final String conURL = "jdbc:postgresql://localhost:5432/PRG381_Project";
    private static final String DRIVER = "org.postgresql.Driver";

   
    public Connection getCon() {
    try{
        Class.forName(DRIVER);
        this.con = DriverManager.getConnection(conURL, username, pwd);
        System.out.println(this.con);
           
         
        if(this.con != null){
            System.out.println("Connected to database");
            
        }
    }catch(Exception ex){
        ex.printStackTrace();
    }
    return con;
}
    //This function adds the data inputed by the user into the database
    public void add(String id, String us, String n,String s, String psw,String ph, String em ) {
        
        PreparedStatement pstmt;
        Connection conn;
        
        try{
            conn = getCon();  
            
         String insertQuery = "INSERT INTO \"RegistrationTable\" (\"UserID\",\"Username\", \"Name\", \"Surname\", \"Password\", \"Phone\", \"Email\") VALUES (?,?,?,?,?,?,?)";
           pstmt = conn.prepareStatement(insertQuery);
           
            pstmt.setString(1, id);
            pstmt.setString(2, us);
            pstmt.setString(3, n);
            pstmt.setString(4, s);
            pstmt.setString(5, psw);
            pstmt.setString(6, ph);
            pstmt.setString(7, em);
            
            pstmt.executeUpdate();
            
          String insertQuery2 = "INSERT INTO \"LoginTable\" (\"UserID\",\"Username\", \"Password\") VALUES (?,?,?)";
           pstmt = conn.prepareStatement(insertQuery2);
            pstmt.setString(1, id);
            pstmt.setString(2, us);
            pstmt.setString(3, psw);

            
            pstmt.executeUpdate();
        }catch(SQLException ex){
            System.out.println("Could not add the data: "+ ex.getMessage());
        }
    }
    
    public boolean validateLogin(String UserID, String username, String password){
    
         String sql = "SELECT \"UserID\", \"Username\", \"Password\" FROM \"LoginTable\"";
        
        try (Connection conn = getCon();
             PreparedStatement pstmt = conn.prepareStatement(sql);
             ResultSet rs = pstmt.executeQuery()) {

            List<User> users = new ArrayList<>();

            // Populates the list with User objects
            while (rs.next()) {
                String idL = rs.getString("UserID");
                String usernameL = rs.getString("Username");
                String passwordL = rs.getString("Password");
                users.add(new User(idL, usernameL, passwordL));
            }

            // Compares the input with the list
            for (User user : users) {
                
                if (user.getId().equals(UserID)) {
                    System.out.println("match found");
                }
                if (user.getUsername().equals(username) && user.getPassword().equals(password) && user.getId().equals(UserID)) {
                    System.out.println("should work");
                    return true;  // User found with matching credentials
                }
            }
        } catch (SQLException ex) {
            System.out.println("Could not validate login: " + ex.getMessage());
        }
        
        
    return false;
    }
    
    
    public boolean validateRegistration(String UserID, String username,  String email){
    
         String sql = "SELECT \"UserID\", \"Username\", \"Email\" FROM \"RegistrationTable\"";
        
        try (Connection conn = getCon();
             PreparedStatement pstmt = conn.prepareStatement(sql);
             ResultSet rs = pstmt.executeQuery()) {

            List<User2> users = new ArrayList<>();

            // Populates the list with User objects
            while (rs.next()) {
                String idL = rs.getString("UserID");
                String usernameL = rs.getString("Username");
                
                String EmailL = rs.getString("Email");
                users.add(new User2(idL, usernameL, EmailL));
            }

            // Compares the input with the list
            for (User2 user : users) {
                
                if (user.getId2().equals(UserID)) {
                   
                }
                if (user.getUsername2().equals(username) && user.getId2().equals(UserID) && user.getEmail2().equals(email)) {
                
                    return true;  //Response if User is found with matching credentials
                }
            }
        } catch (SQLException ex) {
            System.out.println("Could not validate login: " + ex.getMessage());
        }
        
        
    return false;
    }
    
    
    
    class User {// this class is for the login
        private String id;
        private String username;
        private String password;
      

        public User(String id, String username, String password) {
            this.id = id;
            this.username = username;
            this.password = password;
           
        }

        public String getId() {
            return id;
        }

        public String getUsername() {
            return username;
        }

        public String getPassword() {
            return password;
        }
       
    }
    class User2 {// This class is for the Registration page
        private String id;
        private String username;
       
        private String email;

        public User2(String id, String username,String email) {
            this.id = id;
            this.username = username;
            this.email = email;
        }

        public String getId2() {
            return id;
        }

        public String getUsername2() {
            return username;
        }

        public String getEmail2() {
            return email;
        }
    }


}
