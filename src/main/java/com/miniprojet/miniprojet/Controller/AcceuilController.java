package com.miniprojet.miniprojet.Controller;

import java.util.List;

import com.miniprojet.miniprojet.Model.Compte;
import com.miniprojet.miniprojet.Repository.CompteRepository;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

@Controller
@RequestMapping("/")
public class AcceuilController {
    @Autowired
    private CompteRepository compteRepository;

    @GetMapping(path="")
    public @ResponseBody String test()
    {
        List<Compte> comptes = compteRepository.connecterAvecMail("mail", "password");
        if (!comptes.iterator().hasNext()) return "Infos no correct!";


        return "Success!";
    }
}
