package hu.attila.csanyi.mongo.pizza.web;

import hu.attila.csanyi.mongo.pizza.domain.Topping;
import org.springframework.roo.addon.web.mvc.controller.scaffold.RooWebScaffold;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("/toppings")
@Controller
@RooWebScaffold(path = "toppings", formBackingObject = Topping.class)
public class ToppingController {
}
