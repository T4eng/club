package com.team13.club.web;
import com.team13.club.domain.Classify;
import org.springframework.roo.addon.web.mvc.controller.scaffold.RooWebScaffold;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("/classifys")
@Controller
@RooWebScaffold(path = "classifys", formBackingObject = Classify.class)
public class ClassifyController {
}
