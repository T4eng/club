package com.team13.club.web;
import com.team13.club.domain.Title;
import org.springframework.roo.addon.web.mvc.controller.scaffold.RooWebScaffold;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("/titles")
@Controller
@RooWebScaffold(path = "titles", formBackingObject = Title.class)
public class TitleController {
}
