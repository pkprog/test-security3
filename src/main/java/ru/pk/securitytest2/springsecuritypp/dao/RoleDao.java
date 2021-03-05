package ru.pk.securitytest2.springsecuritypp.dao;

import org.springframework.data.jpa.repository.JpaRepository;
import ru.pk.securitytest2.springsecuritypp.model.Role;

public interface RoleDao extends JpaRepository<Role, Long> {
}
