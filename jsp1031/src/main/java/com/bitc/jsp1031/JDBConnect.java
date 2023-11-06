package com.bitc.jsp1031;

import java.sql.*;

public class JDBConnect {

  public Connection conn;
  public Statement stmt;
  public PreparedStatement pstmt;
  public ResultSet rs;

  public JDBConnect() {
    try {
      Class.forName("com.mysql.cj.jdbc.Driver");

      String dbUrl = "jdbc:mysql://localhost:3306/testdb?characterEncoding=UTF-8&serverTimezone=UTC";
      String dbUserId = "test1";
      String dbUserPw = "fullstack501";

      conn = DriverManager.getConnection(dbUrl, dbUserId, dbUserPw);

      System.out.println("DB 연결 성공 (기본 생성자 사용)");
    }
    catch (Exception e) {
      System.out.println("DB 연결 중 오류가 발생했습니다.");
      e.printStackTrace();
    }
  }

  public JDBConnect(String driver, String dbUrl, String dbUserId, String dbUserPw) {
    try {
      Class.forName(driver);
      conn = DriverManager.getConnection(dbUrl, dbUserId, dbUserPw);

      System.out.println("DB 연결 성공 (매개변수가 있는 생성자)");
    }
    catch (Exception e) {
      e.printStackTrace();
    }
  }

  public void close() {
    try {
      if (rs != null) { rs.close(); }
      if (stmt != null) { stmt.close(); }
      if (pstmt != null) { pstmt.close(); }
      if (conn != null) { conn.close(); }
    }
    catch (Exception e) {
      e.printStackTrace();
    }
  }
}








