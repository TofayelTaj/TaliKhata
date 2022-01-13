package com.example.demo.Entities;

import javax.persistence.*;

@Entity
public class Details {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private int detailId;
    private String title;
    private int tk;
    @ManyToOne
    private Entry entry;


    public int getDetailId() {
        return detailId;
    }

    public void setDetailId(int detailId) {
        this.detailId = detailId;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public int getTk() {
        return tk;
    }

    public void setTk(int tk) {
        this.tk = tk;
    }

    public Entry getEntry() {
        return entry;
    }

    public void setEntry(Entry entry) {
        this.entry = entry;
    }

    @Override
    public String toString() {
        return "Details{" +
                "detailId=" + detailId +
                ", title='" + title + '\'' +
                ", tk=" + tk +
                ", entry=" + entry +
                '}';
    }
}
