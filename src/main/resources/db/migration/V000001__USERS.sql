create table USERS (
    id integer not null GENERATED ALWAYS AS IDENTITY (START WITH 1, INCREMENT BY 1),
    username varchar(255) not null,
    password varchar(255),
    constraint PK_USERS primary key (id)
);
