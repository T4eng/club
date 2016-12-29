package com.team13.club.web;
import com.team13.club.domain.EquipmentList;
import org.springframework.roo.addon.web.mvc.controller.scaffold.RooWebScaffold;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("/equipmentlists")
@Controller
@RooWebScaffold(path = "equipmentlists", formBackingObject = EquipmentList.class)
public class EquipmentListController {
}
