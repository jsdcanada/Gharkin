package Admin;

import cucumber.junit.Cucumber;
import org.junit.runner.RunWith;

/**
 * Created by Jagdish on 03/06/2015.
 */
@RunWith(Cucumber.class)
@Cucumber.Options(format = {"html:target/CucumberReports"},tags="@sortby")
public class RunTests {
}
