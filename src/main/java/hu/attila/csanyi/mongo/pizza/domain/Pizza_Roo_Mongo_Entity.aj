// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package hu.attila.csanyi.mongo.pizza.domain;

import hu.attila.csanyi.mongo.pizza.domain.Pizza;
import java.math.BigInteger;
import org.springframework.data.annotation.Id;
import org.springframework.data.annotation.Persistent;

privileged aspect Pizza_Roo_Mongo_Entity {
    
    declare @type: Pizza: @Persistent;
    
    @Id
    private BigInteger Pizza.id;
    
    public BigInteger Pizza.getId() {
        return this.id;
    }
    
    public void Pizza.setId(BigInteger id) {
        this.id = id;
    }
    
}
