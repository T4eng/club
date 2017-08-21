package com.team13.club.web;
import com.team13.club.domain.Club;
import org.springframework.roo.addon.web.mvc.controller.scaffold.RooWebScaffold;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("/clubs")
@Controller
@RooWebScaffold(path = "clubs", formBackingObject = Club.class)
public class ClubController {
}
