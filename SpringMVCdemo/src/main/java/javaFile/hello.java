package javaFile;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class hello {
    @RequestMapping("/")
    public String hello(){
        System.out.println("hello this is hello class");
        return "index";
    }
    @RequestMapping("/about")
    public String about(){
        System.out.println("about this is about class");
        return "about";
    }
}
