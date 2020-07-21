package kr.co.domain;

import java.io.Serializable;

public class BoardDTO implements Serializable {
  private static final long serialVersionUID = 1L;
  private int bno;
  private String title;
  private String content;
  private String writer;
  private int viewcnt;
  private int likes;
  private String category;
  private int sellcnt;
  private int price;
  private int stock;
  private String regDate;
  private String updateDate;

  public BoardDTO() {
  }

  public BoardDTO(int bno, String title, String content, String writer, int viewcnt, int likes, String category,
      int sellcnt, int price, int stock, String regDate, String updateDate) {
    super();
    this.bno = bno;
    this.title = title;
    this.content = content;
    this.writer = writer;
    this.viewcnt = viewcnt;
    this.likes = likes;
    this.category = category;
    this.sellcnt = sellcnt;
    this.price = price;
    this.stock = stock;
    this.regDate = regDate;
    this.updateDate = updateDate;
  }

  public int getBno() {
    return bno;
  }

  public void setBno(int bno) {
    this.bno = bno;
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

  public String getWriter() {
    return writer;
  }

  public void setWriter(String writer) {
    this.writer = writer;
  }

  public int getViewcnt() {
    return viewcnt;
  }

  public void setViewcnt(int viewcnt) {
    this.viewcnt = viewcnt;
  }

  public int getLikes() {
    return likes;
  }

  public void setLikes(int likes) {
    this.likes = likes;
  }

  public String getCategory() {
    return category;
  }

  public void setCategory(String category) {
    this.category = category;
  }

  public int getSellcnt() {
    return sellcnt;
  }

  public void setSellcnt(int sellcnt) {
    this.sellcnt = sellcnt;
  }

  public int getPrice() {
    return price;
  }

  public void setPrice(int price) {
    this.price = price;
  }

  public int getStock() {
    return stock;
  }

  public void setStock(int stock) {
    this.stock = stock;
  }

  public String getRegDate() {
    return regDate;
  }

  public void setRegDate(String regDate) {
    this.regDate = regDate;
  }

  public String getUpdateDate() {
    return updateDate;
  }

  public void setUpdateDate(String updateDate) {
    this.updateDate = updateDate;
  }

  public static long getSerialversionuid() {
    return serialVersionUID;
  }

  @Override
  public int hashCode() {
    final int prime = 31;
    int result = 1;
    result = prime * result + bno;
    return result;
  }

  @Override
  public boolean equals(Object obj) {
    if (this == obj)
      return true;
    if (obj == null)
      return false;
    if (getClass() != obj.getClass())
      return false;
    BoardDTO other = (BoardDTO) obj;
    if (bno != other.bno)
      return false;
    return true;
  }

  @Override
  public String toString() {
    return "BoardDTO [bno=" + bno + ", title=" + title + ", content=" + content + ", writer=" + writer + ", viewcnt="
        + viewcnt + ", likes=" + likes + ", category=" + category + ", sellcnt=" + sellcnt + ", price=" + price
        + ", stock=" + stock + ", regDate=" + regDate + ", updateDate=" + updateDate + "]";
  }

}
