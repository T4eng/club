package com.team13.club.web;
import com.team13.club.domain.Major;
import org.springframework.roo.addon.web.mvc.controller.scaffold.RooWebScaffold;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("/majors")
@Controller
@RooWebScaffold(path = "majors", formBackingObject = Major.class)
public class MajorController {
}
