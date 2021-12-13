package com.miniprojet.miniprojet.Service;

import com.miniprojet.miniprojet.Model.Admin;
import com.miniprojet.miniprojet.Model.Client;
import com.miniprojet.miniprojet.Model.Compte;
import com.miniprojet.miniprojet.Repository.AdminRepository;
import com.miniprojet.miniprojet.Repository.ClientRepository;
import com.miniprojet.miniprojet.Repository.CompteRepository;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class CompteService {
    @Autowired CompteRepository compteRepository;
    @Autowired ClientRepository clientRepository;
    @Autowired AdminRepository adminRepository;

    /**
     * Créer un compte avec son client lié dans la base de donnée
     * @param compte
     * @param client
     * @return <code>True</code> si l'enregistrement a été effectué avec succès,
     * <code>False</code> sinon.
     */
    public boolean creerCompte(Compte compte, Client client)
    {
        try
        {
            compte = compteRepository.save(compte);
        }
        catch(Exception e)
        {
            return false;
        }

        try
        {
            compte.setClient(client);
            client.setCompte(compte);
            client = clientRepository.save(client);
        }
        catch(Exception e)
        {
            compteRepository.deleteById(compte.getId());
            return false;
        }
        
        return true;
    }

    /**
     * Créer un compte avec son admin lié dans la base de donnée
     * @param compte
     * @param admin
     * @return <code>True</code> si l'enregistrement a été effectué avec succès,
     * <code>False</code> sinon.
     */
    public boolean creerCompte(Compte compte, Admin admin)
    {
        try
        {
            compte = compteRepository.save(compte);
        }
        catch(Exception e)
        {
            return false;
        }

        try
        {
            compte.setAdmin(admin);
            admin.setCompte(compte);
            admin = adminRepository.save(admin);
        }
        catch(Exception e)
        {
            compteRepository.deleteById(compte.getId());
            return false;
        }
        
        return true;
    }

    /**
     * Recupérer un compte existant avec son mail et mot de passe
     * @param mail
     * @param password
     * @return <code>Compte</code> si on le trouve, <code>null</code> sinon
     */
    public Compte connecterAvecMail(String mail, String password)
    {
        return compteRepository.connecterAvecMail(mail, password);
    }

    /**
     * Recupérer un compte existant avec son username et mot de passe
     * @param username
     * @param password
     * @return <code>Compte</code> si on le trouve, <code>null</code> sinon
     */
    public Compte connecterAvecUsername(String username, String password)
    {
        return compteRepository.connecterAvecUsername(username, password);
    }
}
