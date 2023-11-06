package com.bitc.jsp1102.database;

import jakarta.servlet.ServletContext;

import java.sql.*;

public class JSPBoardConnector {
//  DB 접속 정보를 저장할 필드
  private String dbDriver;
  private String dbUrl;
  private String dbUserId;
  private String dbUserPw;

//  DB에 접속하고 SQL문 질의 및 결과를 얻어오기 위한 필드
  protected Connection conn;
  protected Statement stmt;
  protected PreparedStatement pstmt;
  protected ResultSet rs;

//  DB 접속 정보를 초기화하는 생성자
  public JSPBoardConnector(ServletContext app) {
    this(
        app.getInitParameter("MySqlDriver"),
        app.getInitParameter("MySqlUrl"),
        app.getInitParameter("MySqlUserId"),
        app.getInitParameter("MySqlUserPw")
    );
  }

  public JSPBoardConnector(String dbDriver, String dbUrl, String dbUserId, String dbUserPw) {
    this.dbDriver = dbDriver;
    this.dbUrl = dbUrl;
    this.dbUserId = dbUserId;
    this.dbUserPw = dbUserPw;
  }

//  데이터 베이스 연결
  public void dbOpen() {
    try {
      Class.forName(dbDriver);
      conn = DriverManager.getConnection(dbUrl, dbUserId, dbUserPw);
      System.out.println("\n ----- 데이터 베이스 연결 성공 ----- \n");
    }
    catch (Exception e) {
      System.out.println("\n ----- 데이터 베이스 연결 실패 ----- \n");
    }
  }
  
//  데이터 베이스 연결 종료
  public void dbClose() {
    try {
      if (rs != null) { rs.close(); }
      if (stmt != null) { stmt.close(); }
      if (pstmt != null) { pstmt.close(); }
      if (conn != null) { conn.close(); }
    }
    catch (Exception e) { }
  }
}







