package com.team13.club.web;
import com.team13.club.domain.Officer;
import org.springframework.roo.addon.web.mvc.controller.scaffold.RooWebScaffold;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("/officers")
@Controller
@RooWebScaffold(path = "officers", formBackingObject = Officer.class)
public class OfficerController {
}
