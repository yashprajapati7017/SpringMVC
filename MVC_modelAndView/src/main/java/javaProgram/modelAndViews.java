package javaProgram;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import java.time.LocalDate;

@Controller
public class modelAndViews {

    @RequestMapping("/help")
    public ModelAndView help(){
        System.out.println("this is mode page");
        ModelAndView mv = new ModelAndView();
        mv.addObject("message","Yash prajapati");
        mv.addObject("age",20);
        LocalDate today = LocalDate.now();
        mv.addObject("today",today);
        mv.setViewName("help");
        return mv;
    }


}
