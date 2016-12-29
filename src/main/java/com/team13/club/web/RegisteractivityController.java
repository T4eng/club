package com.team13.club.web;
import com.team13.club.domain.Registeractivity;
import org.springframework.roo.addon.web.mvc.controller.scaffold.RooWebScaffold;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("/registeractivitys")
@Controller
@RooWebScaffold(path = "registeractivitys", formBackingObject = Registeractivity.class)
public class RegisteractivityController {
}
