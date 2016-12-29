package mycompany.com.sut.web;
import mycompany.com.sut.Ordershirt;
import org.springframework.roo.addon.web.mvc.controller.scaffold.RooWebScaffold;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("/ordershirts")
@Controller
@RooWebScaffold(path = "ordershirts", formBackingObject = Ordershirt.class)
public class OrdershirtController {
}
