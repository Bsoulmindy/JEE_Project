package com.miniprojet.miniprojet.Controller;

import com.miniprojet.miniprojet.Model.Client;
import com.miniprojet.miniprojet.Model.Compte;
import com.miniprojet.miniprojet.Repository.CompteRepository;
import com.miniprojet.miniprojet.Service.CompteService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

@Controller
@RequestMapping("/")
public class AcceuilController {
    @Autowired
    private CompteService compteService;

    @GetMapping(path="")
    public @ResponseBody String test()
    {
        Compte compte = new Compte();
        compte.setUsername("username1");
        compte.setMail("mail1");
        compte.setPassword("password1");
        
        Client client = new Client();
        client.setNomComplet("nomComplet");
        client.setPays("pays");
        client.setProvince("province");
        client.setTel("tel");

        if(!compteService.creerCompte(compte, client)) return "failed!";

        return "Success!";
    }
}
