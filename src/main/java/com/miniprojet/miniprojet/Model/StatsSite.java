package com.miniprojet.miniprojet.Model;

import java.sql.Date;

import javax.persistence.*;

import lombok.Data;

@Entity
@Data
public class StatsSite {
    @Id
    @GeneratedValue(strategy=GenerationType.AUTO)
    private int id;

    @Column(nullable = false)
    private int nbUsersToday;

    @Column(nullable = false)
    private Date date;
}
