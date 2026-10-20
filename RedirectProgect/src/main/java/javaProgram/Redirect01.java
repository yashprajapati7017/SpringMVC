package javaProgram;

import org.springframework.scheduling.support.SimpleTriggerContext;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.view.RedirectView;

@Controller
public class Redirect01 {

    @RequestMapping("/home")
    public String help(){
        System.out.println("this is home class ");
        return "home";
    }

    @RequestMapping("/research")
    public RedirectView reserve(@RequestParam("search")  String search ){
        System.out.println("this is research class ");
        String q = "https://www.google.com/search?q=" + search;

        RedirectView redirectView = new RedirectView();
        redirectView.setUrl(q);

        return redirectView;


    }

}
