package com.example.demo.Services;

import com.example.demo.Dao.UserRepository;
import com.example.demo.Entities.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;


@Controller
public class Login {

    @Autowired
    private UserRepository repository;



    @RequestMapping("/about")
    public  String about(){
        return "about";
    }


    //...............USER REGISTRATION SYSTEM.............
    @PostMapping("/reg")
    public String registration(@ModelAttribute User user, Model model){

        if(!user.getPassword().isEmpty()  && !user.getEmail().isEmpty() && !user.getName().isEmpty()  ) {
            User u = repository.save(user);
            model.addAttribute("success", "Registration Success. Try to Log in. ");
            model.addAttribute("msg_type", "alert-success");
        }else {
            model.addAttribute("msg_type", "alert-danger");
            model.addAttribute("success", "Name, Email or Password is Empty !");
            return "register";
        }

        return "register";
    }



    //.............USER LOG IN SYSTEM........................
    @PostMapping("/login")
    public String loginController(HttpServletRequest request, @RequestParam("email") String email, @RequestParam("password") String password, Model model){
       try {
           User u = repository.findByEmailAndPass(email, password);
           if (u.getEmail().equals(email) && u.getPassword().equals(password)) {
               HttpSession session = request.getSession();
               u.setPassword(null);
               session.setAttribute("cu", u);
               model.addAttribute("user", u);
           } else {
               model.addAttribute("msg", "Email or Password Incorrect ");
               return "index";
           }
       }catch (Exception e){
           model.addAttribute("msg", "Email or Password Incorrect ");
           return "index";
       }
        return "redirect:/user/profile";
    }




    //..........JUST CALLING INDEX PAGE..................
    @RequestMapping("/index")
    public String index(){
        return "index";
    }
 //..........JUST CALLING REG PAGE..................
    @RequestMapping("/register")
    public String regPage(){
        return "register";
    }


}
