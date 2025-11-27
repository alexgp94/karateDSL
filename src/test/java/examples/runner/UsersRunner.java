package examples.runner;

import com.intuit.karate.junit5.Karate;

public class UsersRunner {
    @Karate.Test
    Karate getUsers() {
        System.out.println("DEBUG: intentado cargar classpath:features...");
        return Karate.run("classpath:features");
//        return Karate.run().relativeTo(getClass());
    }
}
