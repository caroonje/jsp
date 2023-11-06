package com.bitc.jsp1101.database;

//DTO : 데이터 베이스와 자바와의 데이터 타입이 서로 다르므로 서로 데이터 타입을 맞추기 위해 사용
//데이터베이스의 테이블 컬럼명과 DTO 클래스의 필드명을 동일하게 사용
//자바에서 데이터 베이스를 사용하기 위해 새로운 데이터 타입이라고 생각하면됨
public class MemberDTO {
//    필드 DB의 member 테이블의 컬럼명과 동일하게 작성
//    DB의 int 타입은 java의 int 타입으로 사용
//    DB의 varchar 타입은 java의 String 타입으로 사용
//    DB의 date 타입은 java의 String 타입으로 사용
    private int seq;
    private String id;
    private String pass;
    private String name;
    private String regidate;
//    필드별 getter/setter 필드 생성

    public int getSeq() {
        return seq;
    }

    public void setSeq(int seq) {
        this.seq = seq;
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getPass() {
        return pass;
    }

    public void setPass(String pass) {
        this.pass = pass;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getRegidate() {
        return regidate;
    }

    public void setRegidate(String regidate) {
        this.regidate = regidate;
    }
}
