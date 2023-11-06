package database;

import jakarta.servlet.ServletContext;


public class BoardDao extends JDBConnect{
    public BoardDao(){super();}
    public BoardDao(ServletContext app){
        super(app);
    }
    public BoardDao(String dbDriver, String dbUrl, String dbUserId, String dbUserPw){
        super(dbDriver, dbUrl, dbUserId, dbUserPw);
    }

//    게시물 목록
//    1단계 전체 목록 가져오기
    public void selectList(){

    }
//    2단계 검색된 목록 가져오기
//    게시물 상세
    public void selectView(){

    }

//    게시물 등록
    public void insertWrite(){

    }

//    게시물 수정
    public void updateEdit(){

    }

//    게시물 조회수 증가
    public void updateVisitCount(){

    }

//    게시물 삭제
    public void deletePost(){
    
    }
}
