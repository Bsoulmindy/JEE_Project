package com.miniprojet.miniprojet.Service;

import com.miniprojet.miniprojet.Model.Admin;
import com.miniprojet.miniprojet.Model.Client;
import com.miniprojet.miniprojet.Model.Compte;
import com.miniprojet.miniprojet.Model.Form.LoginUsernameForm;
import com.miniprojet.miniprojet.Model.Form.NewCompteForm;
import com.miniprojet.miniprojet.Repository.AdminRepository;
import com.miniprojet.miniprojet.Repository.ClientRepository;
import com.miniprojet.miniprojet.Repository.CompteRepository;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.authentication.AuthenticationManager;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;

@Service
public class CompteService {
    @Autowired CompteRepository compteRepository;
    @Autowired ClientRepository clientRepository;
    @Autowired AdminRepository adminRepository;
    @Autowired UserDetailsService userDetailsService;
    @Autowired AuthenticationManager authenticationManager;
    @Autowired PasswordEncoder passwordEncoder;

    /**
     * Créer un compte avec son client lié dans la base de donnée
     * Le username et mail doit être unique dans la base de donnée
     * @param compteForm : form qui contient les infos du compte et les infos du personne
     * @param isAdmin : Est ce que ce compte est Admin ou non
     * @return <code>True</code> si l'enregistrement a été effectué avec succès,
     * <code>False</code> sinon.
     */
    public boolean creerCompte(NewCompteForm compteForm, boolean isAdmin)
    {
        Compte compte = new Compte();
        compte.setMail(compteForm.getEmail());
        compte.setUsername(compteForm.getUsername());
        compte.setPassword(passwordEncoder.encode(compteForm.getPassword()));

        if(!isAdmin)
        {
            Client client = new Client();
            client.setAdresse(compteForm.getAdresse());
            client.setNomComplet(compteForm.getNomComplet());
            client.setPays(compteForm.getPays());
            client.setProvince(compteForm.getProvince());
            client.setTel(compteForm.getTel());

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
        }
        if(isAdmin)
        {
            Admin admin = new Admin();
            admin.setAdresse(compteForm.getAdresse());
            admin.setNomComplet(compteForm.getNomComplet());
            admin.setPays(compteForm.getPays());
            admin.setProvince(compteForm.getProvince());
            admin.setTel(compteForm.getTel());
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
        }
        
        return true;
    }

    /**
     * Connecter au compte en utilisant Username & Password
     * @param form : doit contenir le champ <code>username</code> et <code>password</code>
     * @return <code>True</code> si la connexion a été fait avec succès, <code>False</code> sinon
     */
    public boolean connecterAvecUsername(LoginUsernameForm form) 
    {
        String username = form.getUsername();
        String password = form.getPassword();
        UserDetails userDetails = userDetailsService.loadUserByUsername(username);
        UsernamePasswordAuthenticationToken usernamePasswordAuthenticationToken = new UsernamePasswordAuthenticationToken(userDetails, password, userDetails.getAuthorities());
        authenticationManager.authenticate(usernamePasswordAuthenticationToken);
        if (usernamePasswordAuthenticationToken.isAuthenticated()) {
            SecurityContextHolder.getContext().setAuthentication(usernamePasswordAuthenticationToken);
            return true;
        }
        return false;
    }

    /**
     * Recuperer <code>username</code> du compte connecté
     * @return <code>username</code> si vous êtes connecté, <code>null</code> sinon
     */
    public String recupererUsernameActuel() {
        Object userDetails = SecurityContextHolder.getContext().getAuthentication().getDetails();
        if (userDetails instanceof UserDetails) {
            return ((UserDetails)userDetails).getUsername();
        }
        return null;
    }
}
