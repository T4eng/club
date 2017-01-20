package com.team13.club.web;
import com.team13.club.domain.OpenNewClub;
import org.springframework.roo.addon.web.mvc.controller.scaffold.RooWebScaffold;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("/opennewclubs")
@Controller
@RooWebScaffold(path = "opennewclubs", formBackingObject = OpenNewClub.class)
public class OpenNewClubController {
}
