package ru.pk.securitytest2.springsecuritypp.dao;

import org.springframework.data.jpa.repository.JpaRepository;
import ru.pk.securitytest2.springsecuritypp.model.User;

public interface UserDao extends JpaRepository<User, Long> {

    User findByUsername(String username);

}
