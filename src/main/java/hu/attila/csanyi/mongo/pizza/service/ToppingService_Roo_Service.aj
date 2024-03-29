// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package hu.attila.csanyi.mongo.pizza.service;

import hu.attila.csanyi.mongo.pizza.domain.Topping;
import hu.attila.csanyi.mongo.pizza.service.ToppingService;
import java.math.BigInteger;
import java.util.List;

privileged aspect ToppingService_Roo_Service {
    
    public abstract long ToppingService.countAllToppings();    
    public abstract void ToppingService.deleteTopping(Topping topping);    
    public abstract Topping ToppingService.findTopping(BigInteger id);    
    public abstract List<Topping> ToppingService.findAllToppings();    
    public abstract List<Topping> ToppingService.findToppingEntries(int firstResult, int maxResults);    
    public abstract void ToppingService.saveTopping(Topping topping);    
    public abstract Topping ToppingService.updateTopping(Topping topping);    
}
