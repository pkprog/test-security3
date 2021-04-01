package ru.pk.securitytest2.genpass;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.junit.runners.JUnit4;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.security.crypto.password.StandardPasswordEncoder;

@RunWith(JUnit4.class)
public class Test1PasswordGenerator {
    private Logger log = LoggerFactory.getLogger(Test1PasswordGenerator.class);

    @Test
    public void test1() {
        PasswordEncoder passwordEncoder = new StandardPasswordEncoder("security-test2");
        String s = passwordEncoder.encode("1234");
        log.error("encoded password:" + s);
    }

}
