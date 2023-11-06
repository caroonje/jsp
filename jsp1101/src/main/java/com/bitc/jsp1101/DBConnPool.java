package com.bitc.jsp1101;
import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;
import java.sql.*;
public class DBConnPool {
    public Connection conn;
    public Statement stmt;
    public PreparedStatement pstmt;
    public ResultSet rs;

    public DBConnPool(){
        try {
            Context initCtx = new InitialContext();
//            java:comp/env : jsp 프로그램의 리소스 폴더를 의미
            Context ctx = (Context) initCtx.lookup("java:comp/env");
//            context.xml 에 입력된 Resource(리소스) 내용을 가져옴
            DataSource ds =  (DataSource) ctx.lookup("dbcp_mysql");

            conn = ds.getConnection();

            System.out.println("\n--------- DB 커넥션 풀 연결 성공 ---------------\n");
        }catch (Exception e){
            System.out.println("\n--------- DB 커넥션 풀 연결 실패 ---------------\n");
            e.printStackTrace();
        }
    }
    public void close(){
        try {
            if (rs != null){rs.close();}
            if (stmt != null){stmt.close();}
            if (pstmt != null){pstmt.close();}
            if (conn != null){conn.close();}

            System.out.print("\n--------- DB 커넥션 풀 연결 해제 ---------------\n");
        }catch (Exception e){
            System.out.print("\n--------- DB 커넥션 풀 연결 해제 실패---------------\n");
        }
    }

}
