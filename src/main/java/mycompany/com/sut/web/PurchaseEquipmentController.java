package mycompany.com.sut.web;
import mycompany.com.sut.PurchaseEquipment;
import org.springframework.roo.addon.web.mvc.controller.scaffold.RooWebScaffold;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.roo.addon.web.mvc.controller.finder.RooWebFinder;

@RequestMapping("/purchaseequipments")
@Controller
@RooWebScaffold(path = "purchaseequipments", formBackingObject = PurchaseEquipment.class)
@RooWebFinder
public class PurchaseEquipmentController {
}
