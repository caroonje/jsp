package database;

import jakarta.servlet.ServletContext;

import java.sql.*;

public class JDBConnect {
    public Connection conn;
    public Statement stmt;
    public PreparedStatement pstmt;
    public ResultSet rs;
    public String dbDriver;
    private String dbUrl;
    private String dbUserId;
    private  String dbUserPw;

    public JDBConnect(){
    this("com.mysql.cj.jdbc.Driver",
            "jdbc.mysql://localhost:3306/testdb?characterEncoding=UTF-8&serverTimezone=UTC",
            "test1",
            "fullstack501"
        );
    }
    public JDBConnect(ServletContext app){
        this(
                app.getInitParameter("MySqlDriver"),
                app.getInitParameter("MySqlUrl"),
                app.getInitParameter("MySqlUserId"),
                app.getInitParameter("MySqlUserPw")
        );
    }
    public JDBConnect(String dbDriver, String dbUrl, String dbUserId, String dbUserPw){
        this.dbDriver = dbDriver;
        this.dbUrl = dbUrl;
        this.dbUserId = dbUserId;
        this.dbUserPw = dbUserPw;
    }
    public void dbOpen() {
        try {
            Class.forName(dbDriver);
            conn = DriverManager.getConnection(dbUrl, dbUserId, dbUserPw);
            System.out.println("\n ----- 데이터 베이스 연결 성공 ----- \n");
        }
        catch (Exception e) {
            System.out.println("\n ----- 데이터 베이스 연결 실패 ----- \n");
            e.printStackTrace();
        }
    }

    //  데이터 베이스 연결 종료
    public void dbClose() {
        try {
            if (rs != null) { rs.close(); }
            if (stmt != null) { stmt.close(); }
            if (pstmt != null) { pstmt.close(); }
            if (conn != null) { conn.close(); }
            System.out.println("데이터 베이스 연결 및 리소스를 해제했습니다");
        }
        catch (Exception e) {
            e.printStackTrace();
        }
    }
}
