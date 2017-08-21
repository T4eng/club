package com.team13.club.web;
import com.team13.club.domain.BudgetClub;
import org.springframework.roo.addon.web.mvc.controller.scaffold.RooWebScaffold;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("/budgetclubs")
@Controller
@RooWebScaffold(path = "budgetclubs", formBackingObject = BudgetClub.class)
public class BudgetClubController {
}
