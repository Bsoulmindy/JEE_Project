package com.miniprojet.miniprojet.Model;

import java.util.Set;

import javax.persistence.*;

import lombok.Data;

@Entity
@Data
public class Stock {
    @Id
    @GeneratedValue(strategy=GenerationType.AUTO)
    private int id;

    @OneToMany
    @JoinColumn(name="idProduit", nullable = false)
    private Set<Produit> produits;

    @Column(nullable = false)
    private int nbStock;

    @Column(nullable = false)
    private boolean isHidden;
}
