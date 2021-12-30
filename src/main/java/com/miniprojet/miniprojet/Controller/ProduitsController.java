package com.miniprojet.miniprojet.Controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/produits")
public class ProduitsController {
    
    @GetMapping(path="")
    public String produits()
    {
        //TODO : En attente des demandes du page produits.jsp

        return "produits";
    }
}
