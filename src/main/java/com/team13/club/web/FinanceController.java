package com.team13.club.web;
import com.team13.club.domain.Finance;
import org.springframework.roo.addon.web.mvc.controller.scaffold.RooWebScaffold;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("/finances")
@Controller
@RooWebScaffold(path = "finances", formBackingObject = Finance.class)
public class FinanceController {
}
