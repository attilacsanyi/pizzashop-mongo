package hu.attila.csanyi.mongo.pizza.repository;

import hu.attila.csanyi.mongo.pizza.domain.Base;
import java.util.List;
import org.springframework.roo.addon.layers.repository.mongo.RooMongoRepository;

@RooMongoRepository(domainType = Base.class)
public interface BaseRepository {

    List<hu.attila.csanyi.mongo.pizza.domain.Base> findAll();
}
