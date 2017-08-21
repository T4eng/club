package com.team13.club.web;
import com.team13.club.domain.Returnequipment;
import org.springframework.roo.addon.web.mvc.controller.scaffold.RooWebScaffold;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("/returnequipments")
@Controller
@RooWebScaffold(path = "returnequipments", formBackingObject = Returnequipment.class)
public class ReturnequipmentController {
}
