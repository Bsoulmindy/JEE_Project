package com.miniprojet.miniprojet.Controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
@RequestMapping("/")
public class ProfilController {
    
    @GetMapping(path="profil")
    public @ResponseBody String getProfil()
    {
        //TODO : En attente des demandes du page profil.jsp

        return "connected!";
    }
}
