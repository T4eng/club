package mycompany.com.sut.web;
import mycompany.com.sut.domain.Equiment;
import org.springframework.roo.addon.web.mvc.controller.scaffold.RooWebScaffold;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("/equiments")
@Controller
@RooWebScaffold(path = "equiments", formBackingObject = Equiment.class)
public class EquimentController {
}
