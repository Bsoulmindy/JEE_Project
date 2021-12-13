package com.miniprojet.miniprojet.Service;

import com.miniprojet.miniprojet.Model.Fournisseur;
import com.miniprojet.miniprojet.Repository.FournisseurRepository;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class FournisseurService {
    @Autowired FournisseurRepository fournisseurRepository;

    public boolean ajouterFournisseur(Fournisseur fournisseur)
    {
        try
        {
            fournisseurRepository.save(fournisseur);
        }
        catch(Exception e)
        {
            return false;
        }
        return true;
    }

    public void supprimerFournisseur(Fournisseur fournisseur)
    {
        fournisseurRepository.deleteById(fournisseur.getId());
    }
}
