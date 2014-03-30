package hu.attila.csanyi.mongo.pizza.domain;

import org.junit.Test;
import org.springframework.roo.addon.test.RooIntegrationTest;

@RooIntegrationTest(entity = PizzaOrder.class, transactional = false)
public class PizzaOrderIntegrationTest {

    @Test
    public void testMarkerMethod() {
    }
}
