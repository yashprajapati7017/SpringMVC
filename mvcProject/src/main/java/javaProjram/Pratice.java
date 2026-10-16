package javaProjram;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class Pratice {


//    this work of model
//    @RequestMapping("/help")
//    public String help(Model model){
//        System.out.println("This is pratice class");
////        model.addAttribute("message","yash");
////        model.addAttribute("age",20);
////        return "help";
//    }

    @RequestMapping("/help")
    public ModelAndView help(){
        ModelAndView mv = new ModelAndView();
        mv.addObject("message","yash");
        mv.addObject("age",23);
        mv.setViewName("help");
        return mv;
    }

}
