package hu.attila.csanyi.mongo.pizza.domain;

import org.junit.Test;
import org.springframework.roo.addon.test.RooIntegrationTest;

@RooIntegrationTest(entity = Pizza.class, transactional = false)
public class PizzaIntegrationTest {

    @Test
    public void testMarkerMethod() {
    }
}
