package com.eomcs.web.javascript;

import java.sql.Date;

public class Board {

  int no;
  String title;
  String content;
  Date createDate;
  int viewCount;

  public Board() {}

  public Board(int no, String title, Date createDate, int viewCount) {
    this.no = no;
    this.title = title;
    this.createDate = createDate;
    this.viewCount = viewCount;

  }



  public int getNo() {
    return no;
  }
  public void setNo(int no) {
    this.no = no;
  }
  public String getTitle() {
    return title;
  }
  public void setTitle(String title) {
    this.title = title;
  }
  public String getContent() {
    return content;
  }
  public void setContent(String content) {
    this.content = content;
  }
  public Date getCreateDate() {
    return createDate;
  }
  public void setCreateDate(Date createDate) {
    this.createDate = createDate;
  }
  public int getViewCount() {
    return viewCount;
  }
  public void setViewCount(int viewCount) {
    this.viewCount = viewCount;
  }


}
