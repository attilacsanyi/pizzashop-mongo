// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package hu.attila.csanyi.mongo.pizza.service;

import hu.attila.csanyi.mongo.pizza.domain.Pizza;
import hu.attila.csanyi.mongo.pizza.service.PizzaService;
import java.math.BigInteger;
import java.util.List;

privileged aspect PizzaService_Roo_Service {
    
    public abstract long PizzaService.countAllPizzas();    
    public abstract void PizzaService.deletePizza(Pizza pizza);    
    public abstract Pizza PizzaService.findPizza(BigInteger id);    
    public abstract List<Pizza> PizzaService.findAllPizzas();    
    public abstract List<Pizza> PizzaService.findPizzaEntries(int firstResult, int maxResults);    
    public abstract void PizzaService.savePizza(Pizza pizza);    
    public abstract Pizza PizzaService.updatePizza(Pizza pizza);    
}