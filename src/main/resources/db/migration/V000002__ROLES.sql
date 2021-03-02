create table ROLES (
   id integer not null GENERATED ALWAYS AS IDENTITY (START WITH 1, INCREMENT BY 1),
   name varchar(100) not null,
   constraint PK_ROLES primary key (id)
);
