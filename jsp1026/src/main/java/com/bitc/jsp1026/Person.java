package com.bitc.jsp1026;

// 자바빈즈 : jsp에서 일반 java 클래스를 자바빈즈라고 함
// 자바 빈즈 사용 규칙
// 1. jsp의 자바 빈즈는 기본 패키지가 아닌 다른 패키지명을 사용해야 함
// 2. java 클래스의 필드는 모두 private 접근제한자를 사용해야 함
// 3. 기본 생성자가 무조건 있어야 함
// 4. 클래스의 필드에 접근하기 위한 Getter/Setter가 필요함
// 5. Getter/Setter의 접근제한자는 public으로 설정

// Person 클래스 선언, 자바 빈즈로 선언
public class Person {
//  클래스의 필드는 접근제한자를 모두 private로 설정
  private String name;
  private int age;

//  기본 생성자는 무조건 필수로 생성
  public Person() {}

  public Person(String name, int age) {
    this.name = name;
    this.age = age;
  }

//  Getter/Setter 선언
  public String getName() {
    return name;
  }

  public void setName(String name) {
    this.name = name;
  }

  public int getAge() {
    return age;
  }

  public void setAge(int age) {
    this.age = age;
  }
}
