package com.bitc.jsp1102.database;

public class JSPBoardDto {
  private int board_idx;
  private String board_title;
  private String board_content;
  private String board_member_id;
  private String board_pw;
  private int board_cnt;
  private String board_regdate;
  private String board_update;

  public int getBoard_idx() {
    return board_idx;
  }

  public void setBoard_idx(int board_idx) {
    this.board_idx = board_idx;
  }

  public String getBoard_title() {
    return board_title;
  }

  public void setBoard_title(String board_title) {
    this.board_title = board_title;
  }

  public String getBoard_content() {
    return board_content;
  }

  public void setBoard_content(String board_content) {
    this.board_content = board_content;
  }

  public String getBoard_member_id() {
    return board_member_id;
  }

  public void setBoard_member_id(String board_member_id) {
    this.board_member_id = board_member_id;
  }

  public String getBoard_pw() {
    return board_pw;
  }

  public void setBoard_pw(String board_pw) {
    this.board_pw = board_pw;
  }

  public int getBoard_cnt() {
    return board_cnt;
  }

  public void setBoard_cnt(int board_cnt) {
    this.board_cnt = board_cnt;
  }

  public String getBoard_regdate() {
    return board_regdate;
  }

  public void setBoard_regdate(String board_regdate) {
    this.board_regdate = board_regdate;
  }

  public String getBoard_update() {
    return board_update;
  }

  public void setBoard_update(String board_update) {
    this.board_update = board_update;
  }
}







