package com.example.demo.Entities;

import javax.persistence.*;
import java.util.List;

@Entity
public class Entry {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private int eId;
    private String entryName;
    private String entryPhone;
    private String entryAddress;
    @ManyToOne
    private User user;
    @OneToMany
    private List<Details> eDetails;

    public int geteId() {
        return eId;
    }

    public void seteId(int eId) {
        this.eId = eId;
    }

    public String getEntryName() {
        return entryName;
    }

    public void setEntryName(String entryName) {
        this.entryName = entryName;
    }

    public List<Details> geteDetails() {
        return eDetails;
    }

    public void seteDetails(List<Details> eDetails) {
        this.eDetails = eDetails;
    }

    public String getEntryPhone() {
        return entryPhone;
    }

    public void setEntryPhone(String entryPhone) {
        this.entryPhone = entryPhone;
    }

    public String getEntryAddress() {
        return entryAddress;
    }

    public void setEntryAddress(String entryAddress) {
        this.entryAddress = entryAddress;
    }

    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }

    @Override
    public String toString() {
        return "Entry{" +
                "eId=" + eId +
                ", entryName='" + entryName + '\'' +
                ", entryPhone='" + entryPhone + '\'' +
                ", entryAddress='" + entryAddress + '\'' +
                '}';
    }
}
