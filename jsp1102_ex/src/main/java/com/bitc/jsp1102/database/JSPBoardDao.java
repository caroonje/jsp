package com.bitc.jsp1102.database;

import jakarta.servlet.ServletContext;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class JSPBoardDao extends JSPBoardConnector {

// 생성자
  public JSPBoardDao(ServletContext app) {
    super(app);
  }

  public JSPBoardDao(String dbDriver, String dbUrl, String dbUserId, String dbUserPw) {
    super(dbDriver, dbUrl, dbUserId, dbUserPw);
  }


//  User: lecture-bisper
//  Date: 2023-11-02
//  Time: 14:55
//  설명 : 게시물 목록 보기 메소드
//  매개변수 : 없음
//  반환 타입 : List<JSPBoardDto>, 데이터 베이스에서 받아온 게시물 목록 내용을 반환
  public List<JSPBoardDto> selectBoardList() {
//  최종 반환할 데이터, 데이터 베이스에서 받아온 게시물 목록을 저장할 변수
    List<JSPBoardDto> boardList = new ArrayList<>();

    try {
//      게시물 목록 조회 SQL 쿼리문
      String sql = "SELECT board_idx, board_title, board_member_id, board_regdate, board_cnt ";
      sql += "FROM jspboard ";
      sql += "ORDER BY board_idx DESC ";

//      SQL 쿼리를 질의하기 위해서 Statement 객체 생성
      stmt = conn.createStatement();
//      데이터 베이스로 지정한 SQL 쿼리문을 질의 및 결과 받아오기, 결과값은 ResultSet 타입으로 반환
      rs = stmt.executeQuery(sql);

//      ResultSet 클래스의 멤버 메소드 next()를 이용하여 데이터 하나 가져오기
      while (rs.next()) {
//        결과값으로 하나의 row 데이터를 저장할 객체 선언
        JSPBoardDto board = new JSPBoardDto();

//        각각의 컬럼 데이터를 JSPBoardDto 타입의 필드에 대입함
        board.setBoard_idx(rs.getInt("board_idx"));
        board.setBoard_title(rs.getString("board_title"));
        board.setBoard_member_id(rs.getString("board_member_id"));
        board.setBoard_regdate(rs.getString("board_regdate"));
        board.setBoard_cnt(rs.getInt("board_cnt"));

//        대입된 데이터를 List에 저장
        boardList.add(board);
      }
    }
    catch (SQLException e) {
      System.out.println("----- 데이터 베이스 조회 중 오류 발생 -----");
      System.out.println("SQLException : " + e.getMessage());
    }

//    데이터 베이스에서 가져온 모든 데이터를 저장한 List를 반환
    return boardList;
  }
//  User: lecture-bisper
//  Date: 2023-11-03
//  Time: 10:19
//  설명 : 게시물 상세보기
//  매개변수 : 없음
//  반환 타입 : List<JSPBoardDto>, 데이터 베이스에서 받아온 게시물 목록 내용을 반환

  public JSPBoardDto selectBoardDetail(int idx){
    JSPBoardDto board = new JSPBoardDto();

    try {
      String sql = "SELECT board_idx, board_title, board_content ,board_member_id, board_regdate, board_update ,board_cnt FROM jspboard WHERE board_idx = ? ";

      pstmt =conn.prepareStatement(sql);
      pstmt.setInt(1,idx);
      rs = pstmt.executeQuery();

      while (rs.next()){
        board.setBoard_idx(rs.getInt("board_idx"));
        board.setBoard_title(rs.getString("board_title"));
        board.setBoard_content(rs.getString("board_content"));
        board.setBoard_member_id(rs.getString("board_member_id"));
        board.setBoard_regdate(rs.getString("board_regdate"));
        board.setBoard_update(rs.getString("board_update"));
        board.setBoard_cnt(rs.getInt("board_cnt"));

      }


    }catch (SQLException e){
      System.out.println("----- 데이터 베이스 조회 중 오류 발생 -----");
      System.out.println("SQLException : " + e.getMessage());
    }


    return board;
  }




//  User: lecture-bisper
//  Date: 2023-11-02
//  Time: 14:55
//  설명 : 게시물 등록하기
//  매개변수 : 없음
//  반환 타입 : List<JSPBoardDto>, 데이터 베이스에서 받아온 게시물 목록 내용을 반환
  public void insertBoard(JSPBoardDto board) {
    try {
//      데이터 추가를 위한 SQL문 생성
      String sql = "INSERT INTO jspboard (board_title, board_content, board_member_id, board_pw, board_regdate) ";
      sql += "VALUES (?, ?, ?, ?, NOW()) ";

//      PreparedStatement를 사용하여 SQL의 ? 기호에 데이터 대입
      pstmt = conn.prepareStatement(sql);
      pstmt.setString(1, board.getBoard_title());
      pstmt.setString(2, board.getBoard_content());
      pstmt.setString(3, board.getBoard_member_id());
      pstmt.setString(4, board.getBoard_pw());
//      SQL문 실행
      pstmt.executeUpdate();
    }
    catch (SQLException e) {
      System.out.println("----- 데이터 추가 중 오류 발생 -----");
      System.out.println("SQLException : " + e.getMessage());
    }
  }

//  게시물 수정하기
  //  User: lecture-bisper
//  Date: 2023-11-03
//  Time: 11:31
//  설명 : 게시물 수정하기
//  매개변수 :
//  반환 타입 : 없음
public void updateBoard(int idx,String title,String content){
    try {
      String sql = "UPDATE jspboard SET board_title = ? ,board_content = ? ,board_update = NOW() WHERE board_idx = ?";
      pstmt = conn.prepareStatement(sql);
      pstmt.setString(1,title);
      pstmt.setString(2,content);
      pstmt.setInt(3,idx);
      pstmt.executeUpdate();

    }catch (SQLException e){
      System.out.println("----- 데이터 수정 중 오류 발생 -----");
      System.out.println("SQLException : " + e.getMessage());
    }
}


//  게시물 삭제하기
//  게시물 조회수 올리기
//  User: lecture-bisper
//  Date: 2023-11-03
//  Time: 12:25
//  설명 : 게시물 조회수 올리기
//  매개변수 : int idx, 게시글 번호
//  반환 타입 : 없음
public void deleteBoard(int idx){
    try {
      String sql = "delete from jspboard where board_idx = ? ";
      pstmt =conn.prepareStatement(sql);
      pstmt.setInt(1,idx);
      pstmt.executeUpdate();
    }catch (SQLException e){
      System.out.println("----- 데이터 삭제 중 오류 발생 -----");
      System.out.println("SQLException : " + e.getMessage());
    }
}
//  게시물 조회수 올리기
//  User: lecture-bisper
//  Date: 2023-11-03
//  Time: 10:19
//  설명 : 게시물 조회수 올리기
//  매개변수 : int idx, 게시글 번호
//  반환 타입 : 없음
  public void updateBoardCount(int idx){
    try {
      String sql = "UPDATE jspboard SET board_cnt = board_cnt +1 WHERE board_idx = ?";

      pstmt =conn.prepareStatement(sql);
      pstmt.setInt(1,idx);
      pstmt.executeUpdate();
    }catch (SQLException e){
      System.out.println("----- 데이터 수정 중 오류 발생 -----");
      System.out.println("SQLException : " + e.getMessage());
    }
  }
}







