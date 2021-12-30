package com.miniprojet.miniprojet.Controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
@RequestMapping("/about")
public class AboutController {
    @Autowired JavaMailSender mailSender;
    @GetMapping(path="")
    public @ResponseBody String about()
    {
        String from = "oussamabader@gmail.com";
        String to = "oussamabader@gmail.com";
        
        SimpleMailMessage message = new SimpleMailMessage();
        
        message.setFrom(from);
        message.setTo(to);
        message.setSubject("This is a plain text email");
        message.setText("Hello guys! This is a plain text email.");
        try
        {
            mailSender.send(message);
        }   
        catch(Exception e)
        {
            return e.getMessage();
        }
        return "success!";
        //TODO : En attente des demandes du page about.jsp

        //return "about";
    }
}
