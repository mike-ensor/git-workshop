package cc.ensor.workshop;

import org.junit.Test;

import static org.hamcrest.MatcherAssert.assertThat;
import static org.hamcrest.Matchers.is;
import static org.hamcrest.Matchers.startsWith;

public class ThinggyTest {

    @Test
    public void thinggyTest() {
        Thinggy thinggy = new Thinggy("Thinggy", "Some POJO for me to use");
        assertThat(thinggy.getName(), is("Thinggy"));
        assertThat(thinggy.getDescription(), startsWith("Some"));
    }

}
