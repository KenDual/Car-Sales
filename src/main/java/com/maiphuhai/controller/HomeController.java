
package com.maiphuhai.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

@Controller
@RequestMapping("/")
public class HomeController {
    @GetMapping
    public String showHome() {
        return "home/home-screen";
    }
}
