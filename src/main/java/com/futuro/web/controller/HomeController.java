package com.futuro.web.controller;

import com.futuro.web.entity.Usuario;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.http.HttpServletRequest;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class HomeController {

    @RequestMapping(value = {"/home", "/home**"}, method = RequestMethod.GET)
    public ModelAndView defaultPage() {
        return new ModelAndView("home");

    }

    @RequestMapping(value = "/login", method = RequestMethod.GET)
    public ModelAndView login(@RequestParam(value = "error", required = false) String error, @RequestParam(value = "logout", required = false) String logout, HttpServletRequest request) {
        ModelAndView model = new ModelAndView();
        if (error != null) {
            model.addObject("error", "Invalid username and password!");
        }
        if (logout != null) {
            model.addObject("msg", "You've been logged out successfully.");
        }
        model.setViewName("login");
        return model;
    }

    @RequestMapping("userList")
    public ModelAndView getList() {
        List userList = new ArrayList();
        userList.add(new Usuario());
        userList.add(new Usuario());
        userList.add(new Usuario());
        userList.add(new Usuario());
        return new ModelAndView("userList", "userList", userList);
    }

    @RequestMapping("userForm")
    public ModelAndView getForm(@ModelAttribute Usuario usuario) {
        return new ModelAndView("userForm");
    }
}
