package com.miniprojet.miniprojet.Controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

@Controller
@RequestMapping("/")
public class AcceuilController {

    @GetMapping(path="")
    public String acceuil()
    {
        //TODO : En attente des demandes du page acceuil.jsp

        return "acceuil";
    }
}
