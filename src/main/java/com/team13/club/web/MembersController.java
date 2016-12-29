package com.team13.club.web;
import com.team13.club.domain.Members;
import org.springframework.roo.addon.web.mvc.controller.scaffold.RooWebScaffold;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("/memberses")
@Controller
@RooWebScaffold(path = "memberses", formBackingObject = Members.class)
public class MembersController {
}
