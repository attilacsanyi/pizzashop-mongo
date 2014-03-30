package hu.attila.csanyi.mongo.pizza.web;

import hu.attila.csanyi.mongo.pizza.domain.PizzaOrder;
import org.springframework.roo.addon.web.mvc.controller.scaffold.RooWebScaffold;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("/pizzaorders")
@Controller
@RooWebScaffold(path = "pizzaorders", formBackingObject = PizzaOrder.class)
public class PizzaOrderController {
}
