package com.Login.controller;

import com.Login.model.Login;
import com.Login.model.Registration;
import com.Login.service.LoginService;
import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class LoginController
{
    public static Logger logger = Logger.getLogger(LoginController.class);

    @Autowired(required = false)
    private LoginService loginService;


    @RequestMapping(value = {"index","/"}, method = RequestMethod.GET)
    public ModelAndView toIndexPage() {
        ModelAndView model = new ModelAndView("index");
        return model;
    }

    @RequestMapping(value = "/register", method = RequestMethod.GET)
    public ModelAndView toRegistrationPage() {
        ModelAndView model = new ModelAndView("registration");
        return model;
    }

    @RequestMapping(value = "/login", method = RequestMethod.POST)
    public ModelAndView doLogin(@ModelAttribute("Login") Login userLogin) {
        ModelAndView modelAndView = new ModelAndView();
        logger.info(userLogin.getUserlogin());
        logger.info(userLogin.getPassword());

        //login and password not fill.
        if (userLogin.getUserlogin().isEmpty() || userLogin.getPassword().isEmpty())
        {
            modelAndView.setViewName("index");
            modelAndView.addObject("message","Please fill login and password.");
            return modelAndView;
        }
        //Validate user.
        else if (loginService.validateUser(userLogin))
        {
            modelAndView.setViewName("home");
            return modelAndView;
        }
        else{
            modelAndView.setViewName("index");
            modelAndView.addObject("message","Wrong login or password");
            return modelAndView;
        }
    }

    @RequestMapping(value = "/register", method = RequestMethod.POST)
    public ModelAndView doRegister(@ModelAttribute("Registration")Registration userRegistration)
    {
        ModelAndView modelAndView = new ModelAndView();

        if (!loginService.loginAlreadyExist(userRegistration.getRegisterlogin())) {

            if (userRegistration.getRegisterpassword().equals(userRegistration.getRegisterpasswordConfirm())) {
                loginService.registerUser(userRegistration);
                modelAndView.setViewName("index");
                modelAndView.addObject("message", "Registration successful");
                return modelAndView;
            }
            else
            {
                modelAndView.setViewName("registration");
                modelAndView.addObject("message", "Passwords don't match");
                return modelAndView;
            }
        }
        else
        {
            modelAndView.setViewName("registration");
            modelAndView.addObject("message","Login already exist");
            return modelAndView;
        }


    }

}
