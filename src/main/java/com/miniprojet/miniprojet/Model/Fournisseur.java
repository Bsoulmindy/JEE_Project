package com.miniprojet.miniprojet.Model;

import java.util.Set;

import javax.persistence.*;

import lombok.Data;

@Entity
@Data
public class Fournisseur {
    @Id
    @GeneratedValue(strategy=GenerationType.AUTO)
    private int id;

    @Column(nullable = false)
    private String nomFournisseur;

    @OneToMany
    private Set<Produit> produits;
}
