package com.team13.club.web;
import com.team13.club.domain.Activitydetail;
import org.springframework.roo.addon.web.mvc.controller.scaffold.RooWebScaffold;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("/activitydetails")
@Controller
@RooWebScaffold(path = "activitydetails", formBackingObject = Activitydetail.class)
public class ActivitydetailController {
}
