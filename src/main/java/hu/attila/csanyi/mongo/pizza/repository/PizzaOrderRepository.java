package hu.attila.csanyi.mongo.pizza.repository;

import hu.attila.csanyi.mongo.pizza.domain.PizzaOrder;
import java.util.List;
import org.springframework.roo.addon.layers.repository.mongo.RooMongoRepository;

@RooMongoRepository(domainType = PizzaOrder.class)
public interface PizzaOrderRepository {

    List<hu.attila.csanyi.mongo.pizza.domain.PizzaOrder> findAll();
}
