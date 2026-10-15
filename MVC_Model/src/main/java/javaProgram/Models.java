package javaProgram;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.ArrayList;
import java.util.List;

@Controller
public class Models {

    @RequestMapping("/Index01")
    public String mode(Model model){
        System.out.println("this is mode class");
        model.addAttribute("name","yash prajapati");
        model.addAttribute("age",15);
        List<String> friends=new ArrayList<>();
        friends.add("rishab kumar");
        friends.add("parv");
        model.addAttribute("friends",friends);
        return "Index01";
    }

}
