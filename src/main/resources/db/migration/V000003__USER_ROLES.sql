create table USER_ROLE (
   user_id integer not null,
   role_id integer not null,
   constraint FK_USER_ROLE_USERS foreign key (user_id) references USERS(id),
   constraint FK_USER_ROLE_ROLES foreign key (role_id) references ROLES(id)
);
