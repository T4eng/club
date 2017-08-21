package com.team13.club.web;
import com.team13.club.domain.Loneequipment;
import org.springframework.roo.addon.web.mvc.controller.scaffold.RooWebScaffold;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("/loneequipments")
@Controller
@RooWebScaffold(path = "loneequipments", formBackingObject = Loneequipment.class)
public class LoneequipmentController {
}
