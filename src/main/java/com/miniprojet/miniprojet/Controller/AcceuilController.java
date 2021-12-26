package com.miniprojet.miniprojet.Controller;

import com.miniprojet.miniprojet.Service.StatsSiteService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

@Controller
@RequestMapping("/")
public class AcceuilController {
    @Autowired
    private StatsSiteService statsSiteService;

    @GetMapping(path="")
    public @ResponseBody String test()
    {
        statsSiteService.ajouterVisiteur(1);

        return "Success!";
    }
}
