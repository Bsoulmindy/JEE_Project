package com.miniprojet.miniprojet.Service;

import java.util.ArrayList;
import java.util.List;

import com.miniprojet.miniprojet.Model.Fournisseur;
import com.miniprojet.miniprojet.Model.Produit;
import com.miniprojet.miniprojet.Repository.ProduitRepository;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class ProduitService {
    @Autowired ProduitRepository produitRepository;

    /**
     * Ajouter un nouveau produit
     * @param produit
     * @param fournisseur : doit être déjà existe dans la base de donnée
     * @return <code>True</code> si le produit a été ajouté sans erreur,
     * <code>False</code> sinon
     */
    public boolean ajouterProduit(Produit produit, Fournisseur fournisseur)
    {
        produit.setFournisseur(fournisseur);
        try
        {
            produitRepository.save(produit);
        }
        catch(Exception e)
        {
            return false;
        }
        return true;
    }

    /**
     * Modifier un produit
     * @param produit
     * @return <code>True</code> si le produit a été modifié sans erreur,
     * <code>False</code> sinon
     */
    public boolean modifierProduit(Produit produit)
    {
        try
        {
            produitRepository.save(produit);
        }
        catch(Exception e)
        {
            return false;
        }
        return true;
    }


    public void supprimerProduit(Produit produit)
    {
        produit.setDeleted(true);
        produitRepository.save(produit);
    }

    /**
     * Recuperer un produit avec son ID
     * @param id
     * @return <code>Produit</code> s'il existe, <code>null</code> sinon
     */
    public Produit recupererProduitAvecId(int id)
    {
        Produit produit = null;
        try
        {
            produit = produitRepository.findById(id).get();
        }
        catch(Exception e) {}

        return produit;
    }

    public Produit recupererProduitAvecNom(String nom)
    {
        Produit produit = null;
        try
        {
            produit = produitRepository.chercherProduitAvecNom(nom);
        }
        catch(Exception e) {}

        return produit;
    }

    /**
     * Recuperer des produits dans une catégorie précise
     * @param categorie
     * @param deleted <code>boolean</code> : Est ce que les produits supprimés va être inclus?
     * @return <code>List</code> de type <code>Produit</code>
     */
    public List<Produit> recupererProduitAvecCategorie(String categorie, boolean deleted)
    {
        List<Produit> produits = produitRepository.chercherProduit(categorie, deleted);

        return produits;
    }

    /**
     * Recuperer tous les produits
     * @param deleted <code>boolean</code> : Est ce que les produits supprimés va être inclus?
     * @return <code>List</code> de type <code>Produit</code>
     */
    public List<Produit> recupererTousProduits(boolean deleted)
    {
        Iterable<Produit> result = produitRepository.findAll();
        List<Produit> list = new ArrayList<Produit>();

        for(Produit produit : result)
        {
            if(!deleted)
            {
                if(!produit.isDeleted()) list.add(produit);
            }
            else list.add(produit);
        }

        return list;
    }
}
