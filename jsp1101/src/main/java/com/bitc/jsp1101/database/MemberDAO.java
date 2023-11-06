package com.bitc.jsp1101.database;

import jakarta.servlet.ServletContext;

import java.sql.SQLException;

// DAO : 데이터 베이스를 컨트롤 하기 위한 클래스
//각각의 메소드에 해당 테이블의 데이터를 추가,수정,삭제,조회 하는 기능을 구현

//부모 클래스인 JDBConnect를 상속받아 사용함
public class MemberDAO extends JDBConnect{
    public MemberDAO(){
        super();
    }

    public MemberDAO(ServletContext application){
        super(application);
    }

    public MemberDAO(String driver, String dbUrl, String dbUserId, String dbUserPw){
        super(driver,dbUrl,dbUserId,dbUserPw);
    }
//    데이터 베이스를 컨트롤 하는 메소드를 생성

//    member 7테이블에 사용자가 입력한  id/pw가 일치하는 데이터가 있는지 확인하는 메소드
    public boolean isMember(String userId, String userPw) {
        boolean result =  false;
//        SQL 쿼리문 생성
        String sql = "select count(*) as cnt from member where id = ? and pass = ?";

//        prepareStatement를 사용하여 데이터 베이스에 SQL 문 전달 및 실행
        try {
            pstmt = conn.prepareStatement(sql);
            pstmt.setString(1,userId);
            pstmt.setString(2,userPw);
            
//            select문 실행 후 결과 받아오기
            rs= pstmt.executeQuery();

//            ResultSet 객체에 저장된 데이터 가져오기
            if (rs.next()){
//                id/pw가 일치하는 데이터가 존재시 결과값을 true로 설정
                if (rs.getInt("cnt") == 1){
                    result = true;
                }
            }
        }catch (SQLException e){
            System.out.println("데이터베이스 조회 중 오류가 발생했습니다.");
            System.out.println("SQLException : " + e.getMessage());
        }
//        결과값을 반환
        return result;
    }
//    지정한 사용자의 정보를 가져오기
    public MemberDTO getMemberInfo(String userId){
        MemberDTO member = new MemberDTO();
        try {
            String sql = "select seq,id,name,regidate from member where id = ?";
            pstmt = conn.prepareStatement(sql);
            pstmt.setString(1,userId);
            rs = pstmt.executeQuery();

            if (rs.next()){
                int seq = rs.getInt("seq");
                String id = rs.getString("id");
                String name = rs.getString("name");
                String regiDate = rs.getString("regidate");

                member.setSeq(seq);
                member.setId(id);
                member.setName(name);
                member.setRegidate(regiDate);
            }else {
//                데이터가 없을 경우 출력할 메세지
            }
        }catch (SQLException e){
            System.out.println("데이터베이스 조회 중 오류가 발생했습니다.");
            System.out.println("SQLException : " + e.getMessage());
        }return member;
    }

}
