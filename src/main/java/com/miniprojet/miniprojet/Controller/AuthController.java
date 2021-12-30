package com.miniprojet.miniprojet.Controller;

import javax.validation.Valid;

import com.miniprojet.miniprojet.Model.Form.LoginUsernameForm;
import com.miniprojet.miniprojet.Model.Form.NewCompteForm;
import com.miniprojet.miniprojet.Service.CompteService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;

@Controller
@RequestMapping("/")
public class AuthController {
    @Autowired CompteService compteService;

    @GetMapping(path="login")
    public String formLogin()
    {
        //TODO : En attente des demandes du page login.jsp

        return "login";
    }

    @PostMapping(path="login")
    public String Login(final @Valid LoginUsernameForm form, final BindingResult bindingResult, final Model model)
    {
        if(bindingResult.hasErrors()){
            model.addAttribute("errors", bindingResult.getAllErrors());
            return "login";
        }

        if(!compteService.connecterAvecUsername(form)) return "login";

        return "redirect:/";
    }

    @GetMapping(path="register")
    public String formRegister()
    {
        //TODO : En attente des demandes du page register.jsp

        return "register";
    }

    @PostMapping(path="register")
    public String Register(final @Valid  NewCompteForm compteForm, final BindingResult bindingResult, final Model model)
    {
        if(bindingResult.hasErrors()){
            model.addAttribute("errors", bindingResult.getAllErrors());
            return "register";
        }

        if(!compteService.creerCompte(compteForm, false)) return "register";

        return "register";
    }
}
