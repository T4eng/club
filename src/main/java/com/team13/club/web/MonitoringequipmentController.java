package com.team13.club.web;
import com.team13.club.domain.Monitoringequipment;
import org.springframework.roo.addon.web.mvc.controller.scaffold.RooWebScaffold;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("/monitoringequipments")
@Controller
@RooWebScaffold(path = "monitoringequipments", formBackingObject = Monitoringequipment.class)
public class MonitoringequipmentController {
}
