package hu.attila.csanyi.mongo.pizza.domain;

import org.junit.Test;
import org.springframework.roo.addon.test.RooIntegrationTest;

@RooIntegrationTest(entity = Topping.class, transactional = false)
public class ToppingIntegrationTest {

    @Test
    public void testMarkerMethod() {
    }
}
