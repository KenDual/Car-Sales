
package com.maiphuhai.controller;

import com.maiphuhai.model.Users;
import com.maiphuhai.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/user")
public class UserController {
    
    @Autowired
    private UserService userService;
    
    @GetMapping
    public String showUser(Model model, Users users)  {
        model.addAttribute("users", userService.findAll());
        return "admin/user";
    }
}
