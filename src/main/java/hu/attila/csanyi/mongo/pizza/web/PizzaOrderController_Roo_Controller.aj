// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package hu.attila.csanyi.mongo.pizza.web;

import hu.attila.csanyi.mongo.pizza.domain.PizzaOrder;
import hu.attila.csanyi.mongo.pizza.service.PizzaOrderService;
import hu.attila.csanyi.mongo.pizza.service.PizzaService;
import hu.attila.csanyi.mongo.pizza.web.PizzaOrderController;
import java.io.UnsupportedEncodingException;
import java.math.BigInteger;
import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;
import org.joda.time.format.DateTimeFormat;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.i18n.LocaleContextHolder;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.util.UriUtils;
import org.springframework.web.util.WebUtils;

privileged aspect PizzaOrderController_Roo_Controller {
    
    @Autowired
    PizzaOrderService PizzaOrderController.pizzaOrderService;
    
    @Autowired
    PizzaService PizzaOrderController.pizzaService;
    
    @RequestMapping(method = RequestMethod.POST, produces = "text/html")
    public String PizzaOrderController.create(@Valid PizzaOrder pizzaOrder, BindingResult bindingResult, Model uiModel, HttpServletRequest httpServletRequest) {
        if (bindingResult.hasErrors()) {
            populateEditForm(uiModel, pizzaOrder);
            return "pizzaorders/create";
        }
        uiModel.asMap().clear();
        pizzaOrderService.savePizzaOrder(pizzaOrder);
        return "redirect:/pizzaorders/" + encodeUrlPathSegment(pizzaOrder.getId().toString(), httpServletRequest);
    }
    
    @RequestMapping(params = "form", produces = "text/html")
    public String PizzaOrderController.createForm(Model uiModel) {
        populateEditForm(uiModel, new PizzaOrder());
        return "pizzaorders/create";
    }
    
    @RequestMapping(value = "/{id}", produces = "text/html")
    public String PizzaOrderController.show(@PathVariable("id") BigInteger id, Model uiModel) {
        addDateTimeFormatPatterns(uiModel);
        uiModel.addAttribute("pizzaorder", pizzaOrderService.findPizzaOrder(id));
        uiModel.addAttribute("itemId", id);
        return "pizzaorders/show";
    }
    
    @RequestMapping(produces = "text/html")
    public String PizzaOrderController.list(@RequestParam(value = "page", required = false) Integer page, @RequestParam(value = "size", required = false) Integer size, Model uiModel) {
        if (page != null || size != null) {
            int sizeNo = size == null ? 10 : size.intValue();
            final int firstResult = page == null ? 0 : (page.intValue() - 1) * sizeNo;
            uiModel.addAttribute("pizzaorders", pizzaOrderService.findPizzaOrderEntries(firstResult, sizeNo));
            float nrOfPages = (float) pizzaOrderService.countAllPizzaOrders() / sizeNo;
            uiModel.addAttribute("maxPages", (int) ((nrOfPages > (int) nrOfPages || nrOfPages == 0.0) ? nrOfPages + 1 : nrOfPages));
        } else {
            uiModel.addAttribute("pizzaorders", pizzaOrderService.findAllPizzaOrders());
        }
        addDateTimeFormatPatterns(uiModel);
        return "pizzaorders/list";
    }
    
    @RequestMapping(method = RequestMethod.PUT, produces = "text/html")
    public String PizzaOrderController.update(@Valid PizzaOrder pizzaOrder, BindingResult bindingResult, Model uiModel, HttpServletRequest httpServletRequest) {
        if (bindingResult.hasErrors()) {
            populateEditForm(uiModel, pizzaOrder);
            return "pizzaorders/update";
        }
        uiModel.asMap().clear();
        pizzaOrderService.updatePizzaOrder(pizzaOrder);
        return "redirect:/pizzaorders/" + encodeUrlPathSegment(pizzaOrder.getId().toString(), httpServletRequest);
    }
    
    @RequestMapping(value = "/{id}", params = "form", produces = "text/html")
    public String PizzaOrderController.updateForm(@PathVariable("id") BigInteger id, Model uiModel) {
        populateEditForm(uiModel, pizzaOrderService.findPizzaOrder(id));
        return "pizzaorders/update";
    }
    
    @RequestMapping(value = "/{id}", method = RequestMethod.DELETE, produces = "text/html")
    public String PizzaOrderController.delete(@PathVariable("id") BigInteger id, @RequestParam(value = "page", required = false) Integer page, @RequestParam(value = "size", required = false) Integer size, Model uiModel) {
        PizzaOrder pizzaOrder = pizzaOrderService.findPizzaOrder(id);
        pizzaOrderService.deletePizzaOrder(pizzaOrder);
        uiModel.asMap().clear();
        uiModel.addAttribute("page", (page == null) ? "1" : page.toString());
        uiModel.addAttribute("size", (size == null) ? "10" : size.toString());
        return "redirect:/pizzaorders";
    }
    
    void PizzaOrderController.addDateTimeFormatPatterns(Model uiModel) {
        uiModel.addAttribute("pizzaOrder_deliverydate_date_format", DateTimeFormat.patternForStyle("M-", LocaleContextHolder.getLocale()));
    }
    
    void PizzaOrderController.populateEditForm(Model uiModel, PizzaOrder pizzaOrder) {
        uiModel.addAttribute("pizzaOrder", pizzaOrder);
        addDateTimeFormatPatterns(uiModel);
        uiModel.addAttribute("pizzas", pizzaService.findAllPizzas());
    }
    
    String PizzaOrderController.encodeUrlPathSegment(String pathSegment, HttpServletRequest httpServletRequest) {
        String enc = httpServletRequest.getCharacterEncoding();
        if (enc == null) {
            enc = WebUtils.DEFAULT_CHARACTER_ENCODING;
        }
        try {
            pathSegment = UriUtils.encodePathSegment(pathSegment, enc);
        } catch (UnsupportedEncodingException uee) {}
        return pathSegment;
    }
    
}