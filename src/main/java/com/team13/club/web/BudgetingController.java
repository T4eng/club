package com.team13.club.web;
import com.team13.club.domain.Budgeting;
import org.springframework.roo.addon.web.mvc.controller.scaffold.RooWebScaffold;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("/budgetings")
@Controller
@RooWebScaffold(path = "budgetings", formBackingObject = Budgeting.class)
public class BudgetingController {
}
