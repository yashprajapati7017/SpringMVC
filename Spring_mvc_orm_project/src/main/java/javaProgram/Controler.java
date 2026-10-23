package javaProgram;

import javaProgram.Service.UserService;
import javaProgram.model.User;
import javaProgram.userDao.Dao;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.view.RedirectView;

@Controller
public class Controler {

    @Autowired
    UserService userService;

    @RequestMapping("/help")
    public String hello(){
        System.out.println("hello");
        return "help";
    }

    @RequestMapping(value = "/regestation",method = RequestMethod.GET)
    public String getUser(@ModelAttribute("user") User user, Model model){

        System.out.println("getUser");
        userService.createUser(user);
        model.addAttribute("user",user);
        return "user01";
    }

    @RequestMapping("/userLogin")
    public String userLogin(){
        System.out.println("userLogin");
        return "UserLogin";
    }

    @RequestMapping(value = "/loginStudent",method = RequestMethod.GET)
    public String loginStudent(
            @RequestParam(value = "userFetchId", required = false) Integer id,
            @RequestParam(value = "userFetchPassword", required = false) String password,
            Model model) {

        System.out.println("loginStudent");
        // First time: display search form
        if (id == null || password == null || password.isBlank()) {
            return "searchStudent";
        }

        // Search student
        User fetchUser = userService.loginStudent(id, password);

        if (fetchUser == null) {
            model.addAttribute("message",
                    "Student ID or Password is incorrect");
            return "searchStudent";
        }

        model.addAttribute("user", fetchUser);
        return "user01";
    }

    @RequestMapping( value = "/userSearch",method = RequestMethod.GET)
    public String userSearch(){
        System.out.println("userSearch");
        return "UserSearch";
    }

    @RequestMapping(value = "/searchStudent" ,method = RequestMethod.GET)
    public String searchStudent(@RequestParam("userFetchId") int id,@RequestParam("userName") String name,Model model){
        System.out.println("searchStudent");
        if (id ==0 || name == null || name.isBlank()) {
            return "searchStudent";
        }

        User student=userService.searchUser(id,name);
        model.addAttribute("user",student);
        return "user01";
    }

    @RequestMapping(value = "/userDelete" ,method = RequestMethod.GET)
    public String deteleStudent(){
        System.out.println("userDelete");
        return "userDelete";
    }

    @RequestMapping(value = "studentDelete",method = RequestMethod.GET)
    public String deleteUser(@RequestParam("userFetchId") int id,@RequestParam("userFetchPassword") String password,Model model){
        System.out.println("deleteUser");

        int result=userService.deleteUser(id,password);

        if(result==1){
            System.out.println("Delete Success");
            return "userDelete";
        }
        return "userDelete";
    }

    @RequestMapping("/editStudent")
    public String editStudent(){
        System.out.println("editStudent");
        return "edit";
    }

    @RequestMapping("/userEdit")
    public String userEdit(@RequestParam("userFetchId") int id,@RequestParam("userFetchPassword") String password,Model model){


        User user = userService.update(id, password);

        if (user == null) {
            model.addAttribute("message",
                    "Invalid Student ID or Password");

            return "searchStudent";
        }

        model.addAttribute("user", user);


        return "edit01";
    }
    @RequestMapping(value = "/updateProfile",method = RequestMethod.POST)
    public String updateProfile(@ModelAttribute("user") User user, Model model){

        System.out.println("updateProfile");
        if(userService.UserProfile(user)){
            model.addAttribute("user",user);
            return "user01";
        }else{
            return "redirect:/help";
        }

    }

}
