package com.bitc.jsp1106_mvc1.database;

import jakarta.servlet.ServletContext;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;


public class BoardDao extends JDBConnect {
    public BoardDao() {
        super();
    }

    public BoardDao(ServletContext app) {
        super(app);
    }

    public BoardDao(String dbDriver, String dbUrl, String dbUserId, String dbUserPw) {
        super(dbDriver, dbUrl, dbUserId, dbUserPw);
    }

    //    게시물 목록
//    1단계 전체 목록 가져오기
    public List<BoardDto> selectList() {
        List<BoardDto> boardList = new ArrayList<>();

        try {
//      게시물 목록 조회 SQL 쿼리문
            String sql = "select num,title,id,postdate,visitcount from board order by num desc ";
            pstmt = conn.prepareStatement(sql);
            rs = pstmt.executeQuery();

//      ResultSet 클래스의 멤버 메소드 next()를 이용하여 데이터 하나 가져오기
            while (rs.next()) {
//        결과값으로 하나의 row 데이터를 저장할 객체 선언
                BoardDto board = new BoardDto();
//        각각의 컬럼 데이터를 JSPBoardDto 타입의 필드에 대입함
                board.setNum(rs.getInt("num"));
                board.setTitle(rs.getString("title"));
//                board.setContent(rs.getString("content"));
                board.setId(rs.getString("id"));
                board.setPostdate(rs.getString("postdate"));
                board.setVisitcount(rs.getInt("visitcount"));

//        대입된 데이터를 List에 저장
                boardList.add(board);
            }
        } catch (SQLException e) {
            System.out.println("----- 데이터 베이스 조회 중 오류 발생 -----");
            System.out.println("SQLException : " + e.getMessage());
        }

//    데이터 베이스에서 가져온 모든 데이터를 저장한 List를 반환
        return boardList;
    }




    //    2단계 검색된 목록 가져오기
//    게시물 상세
//    1단계 사용자 이름 없이 가져오기
//    2단계 사용자 이름도 함꼐 가져오기,사용자 이름을 가져오기 위해서 SQL문은 join 해야함

    public BoardDto selectView(int num) {
        BoardDto board = new BoardDto();
        try {
            String sql = "select num,title,content,id,postdate,visitcount from board where num = ?";
            pstmt = conn.prepareStatement(sql);
            pstmt.setInt(1, num);
            rs = pstmt.executeQuery();

            while (rs.next()) {
                board.setNum(rs.getInt("num"));
                board.setTitle(rs.getString("title"));
                board.setContent(rs.getString("content"));
                board.setId(rs.getString("id"));
                board.setPostdate(rs.getString("postdate"));
                board.setVisitcount(rs.getInt("visitcount"));


            }

        } catch (SQLException e) {
            System.out.println("----- 데이터 조회 중 오류 발생 -----");
            System.out.println("SQLException : " + e.getMessage());
        }
        return board;
    }

    //    게시물 등록
    public int insertWrite(BoardDto board) {
        int result = 0;
        try {
//      데이터 추가를 위한 SQL문 생성
            String sql = "insert into board (title,content,id,postdate) values(?,?,?,now()) ";

//      PreparedStatement를 사용하여 SQL의 ? 기호에 데이터 대입
            pstmt = conn.prepareStatement(sql);
            pstmt.setString(1, board.getTitle());
            pstmt.setString(2, board.getContent());
            pstmt.setString(3, board.getId());
            result = pstmt.executeUpdate();
        } catch (SQLException e) {
            System.out.println("----- 데이터 추가 중 오류 발생 -----");
            System.out.println("SQLException : " + e.getMessage());
        }
        return result;
    }

    //    게시물 수정
    public int updateEdit(BoardDto board) {
        int result = 0;
        try {
            String sql = "UPDATE board SET title = ? ,content = ? ,postdate = NOW() WHERE num = ? ";
            pstmt = conn.prepareStatement(sql);
            pstmt.setString(1, board.getTitle());
            pstmt.setString(2, board.getContent());
            pstmt.setInt(3, board.getNum());
            result = pstmt.executeUpdate();

        } catch (SQLException e) {
            System.out.println("----- 데이터 수정 중 오류 발생 -----");
            System.out.println("SQLException : " + e.getMessage());
        }
        return result;
    }

    //    게시물 조회수 증가
    public void updateVisitCount(int num) {
        try {
            String sql = "UPDATE board SET visitcount = visitcount +1 WHERE num = ? ";

            pstmt = conn.prepareStatement(sql);
            pstmt.setInt(1, num);

            pstmt.executeUpdate();
        } catch (SQLException e) {
            System.out.println("----- 데이터 수정 중 오류 발생 -----");
            System.out.println("SQLException : " + e.getMessage());
        }
    }

    //    게시물 삭제
    public int deletePost(int num) {
        int result = 0;
        try {
            String sql = "delete from board where num = ? ";
            pstmt = conn.prepareStatement(sql);
            pstmt.setInt(1, num);
            result = pstmt.executeUpdate();
        } catch (SQLException e) {
            System.out.println("----- 데이터 삭제 중 오류 발생 -----");
            System.out.println("SQLException : " + e.getMessage());
        }
        return result;
    }
}

