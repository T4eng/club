package com.sut.g13.domain;
import com.sut.g13.Orderingshirt;
import org.springframework.roo.addon.web.mvc.controller.scaffold.RooWebScaffold;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("/orderingshirts")
@Controller
@RooWebScaffold(path = "orderingshirts", formBackingObject = Orderingshirt.class)
public class OrderingshirtController {
}
