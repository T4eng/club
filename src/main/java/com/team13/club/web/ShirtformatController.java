package com.team13.club.web;
import com.team13.club.domain.Shirtformat;
import org.springframework.roo.addon.web.mvc.controller.scaffold.RooWebScaffold;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("/shirtformats")
@Controller
@RooWebScaffold(path = "shirtformats", formBackingObject = Shirtformat.class)
public class ShirtformatController {
}
