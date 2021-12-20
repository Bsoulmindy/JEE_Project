package com.miniprojet.miniprojet.Service;

import com.miniprojet.miniprojet.Model.Client;
import com.miniprojet.miniprojet.Model.ClientProduitId;
import com.miniprojet.miniprojet.Model.Panier;
import com.miniprojet.miniprojet.Model.Produit;
import com.miniprojet.miniprojet.Repository.PanierRepository;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class PanierService {
    @Autowired PanierRepository panierRepository;

    public boolean supprimerAuPanier(Client client, Produit produit)
    {
        ClientProduitId id = new ClientProduitId();
        id.setIdClient(client.getId());
        id.setIdProduit(produit.getId());
        try {
            panierRepository.deleteById(id);;
        } catch (Exception e) {
            return false;
        }
        return true;
    }

    public boolean ajouterProduitAuPanier(Client client, Produit produit, int nbProduit)
    {
        //Verifiant si on a un panier déjà existe
        ClientProduitId id = new ClientProduitId();
        id.setIdClient(client.getId());
        id.setIdProduit(produit.getId());
        Panier panier = new Panier();
        try {
            panier = panierRepository.findById(id).get();
            if (panier.getNbProduit() + nbProduit > 0)
                panier.setNbProduit(panier.getNbProduit() + nbProduit);
            else
                try {
                    supprimerAuPanier(client, produit);
                } catch (Exception e) {
                    return false;
                }
        } catch (Exception e) { // Il n'existe pas
            if (nbProduit > 0)
            {
                panier.setClient(client);
                panier.setProduit(produit);
                panier.setNbProduit(nbProduit);
            }
            else
                return false;
        }
        try {
            panierRepository.save(panier);
        } catch (Exception e) {
            return false;
        }
        return true;
    }

    
}
