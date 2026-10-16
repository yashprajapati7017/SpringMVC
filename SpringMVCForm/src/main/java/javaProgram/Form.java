package javaProgram;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class Form {

    @RequestMapping("/form")
    public String form(){
        System.out.println("form");
        return "form";
    }

//    this is work on @RequestParam
//    @RequestMapping("/regestation")
//    public String regester(@RequestParam("userName" ) String username,
//                           @RequestParam("userPassword") String password,
//                           @RequestParam("userEmail") String email, Model model){
//
//        System.out.println("user name = " + username);
//        System.out.println("user password = " + password);
//        System.out.println("user email = " + email);
//
//        model.addAttribute("name",username);
//        model.addAttribute("password",password);
//        model.addAttribute("email",email);
//
//        return "userDetails";
//    }
    @RequestMapping(path="/regestation")
    public String regester(@ModelAttribute("user") User user,Model model){
        model.addAttribute("user",user);
        return "userDetails";
    }

}
