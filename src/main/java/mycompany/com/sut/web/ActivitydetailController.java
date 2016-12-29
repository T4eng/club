package mycompany.com.sut.web;
import mycompany.com.sut.domain.Activitydetail;
import org.springframework.roo.addon.web.mvc.controller.scaffold.RooWebScaffold;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("/activitydetails")
@Controller
@RooWebScaffold(path = "activitydetails", formBackingObject = Activitydetail.class)
public class ActivitydetailController {
}
