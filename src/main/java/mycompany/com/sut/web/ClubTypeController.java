package mycompany.com.sut.web;
import mycompany.com.sut.domain.ClubType;
import org.springframework.roo.addon.web.mvc.controller.scaffold.RooWebScaffold;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("/clubtypes")
@Controller
@RooWebScaffold(path = "clubtypes", formBackingObject = ClubType.class)
public class ClubTypeController {
}
