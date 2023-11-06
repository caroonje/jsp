package com.bitc.jsp1101.database;

import jakarta.servlet.ServletContext;

import java.sql.*;

// 데이터 베이스 연결을 위한 부모클래스
public class JDBConnect {
// 데이터 베이스 접속 및 SQL 쿼리문 제어 , 결과값을 받기 위한 클래스를 필드로 선언
    public Connection conn;
    public Statement stmt;
    public PreparedStatement pstmt;

    public ResultSet rs;

//    데이터 베이스 연결 정보를 저장할 필드 선언
    private String driver;
    private String dbUrl;
    private String dbUserId;
    private String dbUserPw;

    public JDBConnect() {

        this("com.mysql.cj.jdbc.Driver",
                "jdbc:mysql://localhost:3306/testdb?characterEncoding=UTF-8&serverTimezone=UTC",
                "test1",
                "fullstack501");

    }

//
    public JDBConnect(ServletContext application){
        this(application.getInitParameter("MySqlDriver"),
                application.getInitParameter("MySqlUrl"),
                application.getInitParameter("MySqlUserId"),
                application.getInitParameter("MySqlUserPw") );
    }

    public JDBConnect(String driver, String dbUrl, String dbUserId, String dbUserPw) {
        this.driver = driver;
        this.dbUrl = dbUrl;
        this.dbUserId = dbUserId;
        this.dbUserPw = dbUserPw;
    }
//데이터 베이스 접속하기 위한 메소드
    public void dbOpen() {
//        데이터 베이스 접속 정보를 저장한 필드를 사용하여 실제 데이터 베이스에 접속
        try {
            Class.forName(driver);
//            데이터 베이스 연결 부분
            conn = DriverManager.getConnection(dbUrl,dbUserId,dbUserPw);
        }catch (Exception e){
            System.out.println("데이터 베이스 연결이 실패 하였습니다.");
            e.printStackTrace();
        }
    }

//데이터 베이스와 연결 종료 및 리소스 해제
    public void dbClose() {
        try {
            if (rs != null) {
                rs.close();
            }
            if (stmt != null) {
                stmt.close();
            }
            if (pstmt != null) {
                pstmt.close();
            }
            if (conn != null) {
                conn.close();
            }
        } catch (Exception e) {
        }
    }
}
