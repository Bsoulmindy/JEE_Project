package com.miniprojet.miniprojet.Model;

import javax.persistence.*;

import lombok.Data;

@Data
@Entity
public class Compte {
    @Id
    @GeneratedValue(strategy=GenerationType.AUTO)
    private int id;

    @OneToOne(mappedBy = "compte")
    private Client client;

    @OneToOne(mappedBy = "compte")
    private Admin admin;

    @Column(unique = true, nullable = false)
    private String username;

    @Column(nullable = false)
    private String password;

    @Column(unique = true, nullable = false)
    private String mail;

    @Column(nullable = false)
    private boolean isAdmin;
}
