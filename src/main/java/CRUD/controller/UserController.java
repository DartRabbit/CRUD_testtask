package CRUD.controller;

import CRUD.model.User;
import CRUD.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

@Controller
public class UserController {
    private UserService userService;

    @Autowired(required = true)
    @Qualifier(value = "userService")
    public void setUserService(UserService userService) {
        this.userService = userService;
    }

    @RequestMapping(value = "users", method = RequestMethod.GET)
    public String listUsers(
            @RequestParam(value = "page", required = false) Integer page,
            @RequestParam(value = "search", required = false) String name,
            Model model)
    {
        if(page==null)page=1;

        if(name!=null) {
            model.addAttribute("listUsers",this.userService.getUsersByName(name));
        }else{
            model.addAttribute("listUsers", this.userService.listUsers(page));
        }
        model.addAttribute("user", new User());
        model.addAttribute("page", page);
        model.addAttribute("pages", this.userService.pages());

        return "users";
    }

    @RequestMapping(value = "/users/update", method = RequestMethod.POST)
    public String addUser(
            @RequestParam(value = "page", required = false) Integer page,
            @ModelAttribute("user") User user){

        if(page==null)page=1;

        if(user.getId() == 0){
            this.userService.addUser(user);
        }else {
            this.userService.updateUser(user);
        }

        return "redirect:/users/?page="+page;
    }

    @RequestMapping("/remove/{id}")
    public String removeUser(
            @RequestParam(value = "page", required = false) Integer page,
            @PathVariable("id") int id)
    {
        if(page==null)page=1;

        this.userService.removeUser(id);

        return "redirect:/users/?page="+page;
    }

    @RequestMapping("edit/{id}")
    public String editBook(@PathVariable("id") int id, @RequestParam(value = "page", required = false) Integer page, Model model){
        if(page==null)page=1;
        model.addAttribute("user", this.userService.getUserById(id));
        model.addAttribute("listUsers", this.userService.listUsers(page));
        model.addAttribute("page", page);
        model.addAttribute("pages", this.userService.pages());

        return "users";
    }
}
