package com.shop.dto;

public class Notice {
    private int nno;
    private String title;
    private String content;
    private String resdate;
    private int visit;

    public int getNno() {
        return nno;
    }

    public void setNno(int nno) {
        this.nno = nno;
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

    public String getResdate() {
        return resdate;
    }

    public void setResdate(String resdate) {
        this.resdate = resdate;
    }

    public int getVisit() {
        return visit;
    }

    public void setVisit(int visit) {
        this.visit = visit;
    }

    @Override
    public String toString() {
        return "Notice{" +
                "nno=" + nno +
                ", title='" + title + '\'' +
                ", content='" + content + '\'' +
                ", resdate='" + resdate + '\'' +
                ", visit=" + visit +
                '}';
    }
}
