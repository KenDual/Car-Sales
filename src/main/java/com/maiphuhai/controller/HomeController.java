package com.maiphuhai.controller;

import com.maiphuhai.model.Cars;
import com.maiphuhai.service.CarService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

@Controller
@RequestMapping("/home")
public class HomeController {

    @Autowired
    private CarService carService;

    @GetMapping
    public String showHome(Model model){
        List<Cars> cars = carService.getAllCars();
        model.addAttribute("cars", cars);
        return "home/home-screen";
    }



}
