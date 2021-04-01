package ru.pk.securitytest2.springsecuritypp.service;

public interface SecurityService {

    String findLoggedInUsername();

    void autoLogin(String username, String password);

}
