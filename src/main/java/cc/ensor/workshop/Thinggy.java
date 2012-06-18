package cc.ensor.workshop;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

/**
 * Thinggy is just a POJO that does...nothing
 */
public class Thinggy {

    private static final Logger LOG = LoggerFactory.getLogger(Thinggy.class);
    private final String name;
    private final String description;

    public Thinggy(String name, String description) {
        this.name = name;
        this.description = description;
    }

    public String getName() {
        return name;
    }

    public String getDescription() {
        return description;
    }
}
