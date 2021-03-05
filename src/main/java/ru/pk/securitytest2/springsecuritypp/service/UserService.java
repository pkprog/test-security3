package ru.pk.securitytest2.springsecuritypp.service;

import ru.pk.securitytest2.springsecuritypp.model.User;

public interface UserService {

    void save(User user);

    User findByUsername(String username);
}
