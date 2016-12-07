package com.sut.g13.domain;
import com.sut.g13.PurchaseEquipment;
import org.springframework.roo.addon.web.mvc.controller.scaffold.RooWebScaffold;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("/purchaseequipments")
@Controller
@RooWebScaffold(path = "purchaseequipments", formBackingObject = PurchaseEquipment.class)
public class PurchaseEquipmentController {
}
