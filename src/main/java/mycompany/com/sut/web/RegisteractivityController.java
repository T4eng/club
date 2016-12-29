package mycompany.com.sut.web;
import mycompany.com.sut.domain.Registeractivity;
import org.springframework.roo.addon.web.mvc.controller.scaffold.RooWebScaffold;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("/registeractivitys")
@Controller
@RooWebScaffold(path = "registeractivitys", formBackingObject = Registeractivity.class)
public class RegisteractivityController {
}
