package javaProject;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.ServletRequestBindingException;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class main {

    @RequestMapping("/name")
    public String Name(){
        System.out.println("this is Name method");
        return "Name";
    }

    @RequestMapping("/display")
    public String display(@RequestParam("userName") String name, Model model){
        System.out.println("this is Display method");
        model.addAttribute("userName", name);
        return "Display";
    }

}
