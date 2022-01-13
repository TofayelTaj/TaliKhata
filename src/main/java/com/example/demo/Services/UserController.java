package com.example.demo.Services;

import com.example.demo.Dao.DetailsRepo;
import com.example.demo.Dao.EntryRepository;
import com.example.demo.Dao.UserRepository;
import com.example.demo.Entities.Details;
import com.example.demo.Entities.Entry;
import com.example.demo.Entities.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.ArrayList;
import java.util.List;
import java.util.Optional;

@Controller
@RequestMapping("/user")
public class UserController {

    @Autowired
    private EntryRepository entryRepository;
    @Autowired
    private DetailsRepo detailsRepo;
    @Autowired
    private UserRepository userRepository;

    private  int entryId;
    private Entry ent;

    @RequestMapping("/about")
    public  String about(){
        return "about";
    }


    @RequestMapping("/profile")
    public String profile(Model model, HttpServletRequest request){
        HttpSession session = request.getSession();
        User user    = (User)session.getAttribute("cu");
        List<Entry> entryList = new ArrayList<>();
        entryList = entryRepository.findAllEntry(user.getId());

        List<List<Integer>> all = new ArrayList<>();


        for(Entry e : entryList){
           all.add( detailsRepo.getAllTkByEntryId(e.geteId()));
        }
        int res = 0;

        for(int i = 0; i<all.size(); i++){
            for (int j = 0; j<all.get(i).size(); j++){
                res += all.get(i).get(j);
            }
        }

        model.addAttribute("totalDue", res);
        System.out.println("total Due : "+ res);


        model.addAttribute("eList", entryList);
        return "profile";
    }


    //................LOG OUT SYSTEM.................

    @RequestMapping("/logout")
    public String logOutSystem(HttpServletRequest request){
        HttpSession session  = request.getSession();
        session.removeAttribute("cu");

        return "redirect:/index";
    }


    //.............ENTRY CONTROLLER.........................
    @RequestMapping("/entry")
    public String entryController(@ModelAttribute Entry entry, Model model, HttpServletRequest request){
        if(!entry.getEntryName().isEmpty() && !entry.getEntryAddress().isEmpty() && !entry.getEntryPhone().isEmpty()){
            entry.setUser((User) request.getSession().getAttribute("cu"));
            entryRepository.save(entry);
        }else{
            model.addAttribute("customerMsg", "Fill All Details of Customer");
            model.addAttribute("customerMsg_type", "alert-danger");
            return "redirect:/user/profile";
        }


        return "redirect:/user/profile";
    }


    //..............SHOW DETAILS FOR EVERY ENTRY......................
    @RequestMapping("/data")
    public String showDetails(@RequestParam("entry") int id, Model model){
        ent =  entryRepository.findEntryById(id);

        System.out.println(ent);
        model.addAttribute("ent", ent);
        entryId =id;
        List<Details> list = new ArrayList<Details>();
        list = detailsRepo.getAllEntryDetails(id);
        model.addAttribute("dList", list);
        model.addAttribute("allTk",detailsRepo.getAllTkByEntryId(id));
        return "details";
}

    //.............GETING DETAILS PAGE......................
    @RequestMapping("/detail_page")
    public  String detailPage(Model model){
        model.addAttribute("id",entryId);
        List<Details> list = new ArrayList<Details>();
        ent =  entryRepository.findEntryById(entryId);
        model.addAttribute("ent", ent);
        list = detailsRepo.getAllEntryDetails(entryId);
        model.addAttribute("dList", list);
        model.addAttribute("allTk",detailsRepo.getAllTkByEntryId(entryId));
        return "details";
    }

    //...............UNPAID ENTRY CONTROLLER.....................
    @RequestMapping("/upentry")
    public String unpaidEntry(@ModelAttribute Details details, Model model){
        Optional<Entry> op = entryRepository.findById(entryId);

        Entry ed = op.get();
        details.setEntry(ed);
        detailsRepo.save(details);
        //testing details data
        System.out.println(details.getTitle() + "  "+ details.getTk());
        model.addAttribute("id",entryId);
        return "redirect:/user/detail_page";

    }


    //......................REMOVE AN ENTRY.................
    @RequestMapping("/remove")
    public String removeDetails(@RequestParam("removeId") int removeId){
        detailsRepo.deleteById(removeId);


        return "redirect:/user/detail_page";
    }



    @ExceptionHandler(Exception.class)
    public String allExceptionHandaller(){


        return "exception";
    }

}
