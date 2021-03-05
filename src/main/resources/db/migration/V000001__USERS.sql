create table USERS (
    id integer not null,
    username varchar(255) not null,
    password varchar(255),
    constraint PK_USERS primary key (id)
);
