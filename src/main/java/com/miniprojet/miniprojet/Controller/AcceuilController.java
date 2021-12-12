package com.miniprojet.miniprojet.Controller;

import com.miniprojet.miniprojet.Model.Client;
import com.miniprojet.miniprojet.Model.Compte;
import com.miniprojet.miniprojet.Model.Fournisseur;
import com.miniprojet.miniprojet.Model.Panier;
import com.miniprojet.miniprojet.Model.Produit;
import com.miniprojet.miniprojet.Repository.ClientRepository;
import com.miniprojet.miniprojet.Repository.CompteRepository;
import com.miniprojet.miniprojet.Repository.FournisseurRepository;
import com.miniprojet.miniprojet.Repository.PanierRepository;
import com.miniprojet.miniprojet.Repository.ProduitRepository;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

@Controller
@RequestMapping("/")
public class AcceuilController {
    @Autowired
    private PanierRepository panierRepository;
    @Autowired
    private ClientRepository clientRepository;
    @Autowired
    private ProduitRepository produitRepository;
    @Autowired
    private CompteRepository compteRepository;
    @Autowired
    private FournisseurRepository fournisseurRepository;

    @GetMapping(path="")
    public @ResponseBody String test()
    {
        Compte compte = new Compte();
        compte.setUsername("username");
        compte.setPassword("password");
        compte.setMail("mail");
        compte = compteRepository.save(compte);
        
        Client client = new Client();
        client.setNomComplet("nom");
        client.setTel("tel");
        client.setAdresse("adresse");
        client.setPays("pays");
        client.setProvince("province");

        compte.setClient(client);
        client.setCompte(compte);
        client = clientRepository.save(client);
        
        Fournisseur fournisseur = new Fournisseur();
        fournisseur.setNomFournisseur("nomFournisseur");
        fournisseur = fournisseurRepository.save(fournisseur);

        Produit produit = new Produit();
        produit.setNomProduit("nomProduit");
        produit.setCategorieProduit("categorieProduit");
        produit.setPrixProduit(2.0F);
        produit.setDeleted(false);
        produit.setFournisseur(fournisseur);
        produit = produitRepository.save(produit);

        Panier panier = new Panier();
        panier.setNbProduit(2);
        panier.setClient(client);
        panier.setProduit(produit);

        panierRepository.save(panier);

        return "Success!";
    }
}
