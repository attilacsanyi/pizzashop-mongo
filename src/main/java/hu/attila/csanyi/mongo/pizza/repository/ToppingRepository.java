package hu.attila.csanyi.mongo.pizza.repository;

import hu.attila.csanyi.mongo.pizza.domain.Topping;
import java.util.List;
import org.springframework.roo.addon.layers.repository.mongo.RooMongoRepository;

@RooMongoRepository(domainType = Topping.class)
public interface ToppingRepository {

    List<hu.attila.csanyi.mongo.pizza.domain.Topping> findAll();
}
