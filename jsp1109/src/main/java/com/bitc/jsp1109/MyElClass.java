package com.bitc.jsp1109;

public class MyElClass {
    public String getGender(String jumin){
        String returnStr = "";
//        indexOf(문자열) : 지정한 문자열이 전체 문자열에서 첫번째로 검색되는 index 번호를 출력
        int beginIdx = jumin.indexOf("-")+1;
//        substring(시작index,끝index) : 전체 문자열 중에서 시작 index로 지정한 문자부터 끝 index로 지정한 문자까지의 문자열을 복사해오는 메소드, 끝index의 문자는 포함하지않음
        String genderStr = jumin.substring(beginIdx,beginIdx+1);
        int genderInt = Integer.parseInt(genderStr);
        if (genderInt ==1 || genderInt ==3){
            returnStr = "남자";
        }else if (genderInt ==2 || genderInt ==4){
            returnStr ="여자";
        }else {
            returnStr = "주민번호 오류입니다.";
        }
        return returnStr;
    }

//    정적 메소드
    public static boolean isNumber(String value){
//        toCharArray() : 지정한 문자열을 char 타입의 배열로 반환하는 메소드
        char[] chArr = value.toCharArray();
//        char 타입의 배열을 전체 확인하여 0~9 까지의 문자인지 확인
        for (int i =0; i<chArr.length; i++){
            if (!(chArr[i] >= '0' && chArr[i] <= '9')){
                return false;
            }
        }return true;
    }

    public static String showGugudan(int limitDan){
//        StringBuffer : 문자열을 추가/삭제 할때 사용하는 문자열 클래스 , 같은 기능을 가지고있는 StringBuilder 클래스도 존재함
//        빈번한 문자열의 추가/삭제는 일반 String 클래스로 진행하면 성능이 떨어지게 되므로 StringBuffer/StringBuilder 클래스를 사용하는 것이 좋음
        StringBuffer sb = new StringBuffer();
        try {
//            append(문자열) : 기존 문자열에 매개변수로 받은 문자열을 추가하는 메소드
            sb.append("<table class ='table table-bordered'>");
            for (int i =2; i<= limitDan; i ++){
                sb.append("<tr>");
                for (int j = 1; j <= 9; j++){
                    sb.append("<td>"+ i + " X "+ j + " = " + (i * j) + "</td>");
                }
                sb.append("</tr>");
            }
            sb.append("</table>");
        }catch (Exception e){
            e.printStackTrace();
        }return sb.toString();
    }
}
