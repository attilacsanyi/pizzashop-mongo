package hu.attila.csanyi.mongo.pizza.repository;

import hu.attila.csanyi.mongo.pizza.domain.Pizza;
import java.util.List;
import org.springframework.roo.addon.layers.repository.mongo.RooMongoRepository;

@RooMongoRepository(domainType = Pizza.class)
public interface PizzaRepository {

    List<hu.attila.csanyi.mongo.pizza.domain.Pizza> findAll();
}
