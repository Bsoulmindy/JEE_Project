package com.miniprojet.miniprojet.Controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/about")
public class AboutController {
    
    @GetMapping(path="")
    public String about()
    {
        //TODO : En attente des demandes du page about.jsp

        return "about";
    }
}
