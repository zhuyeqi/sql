create table t_element
(
    id    int auto_increment
        primary key,
    eleno varchar(32) not null
);

create table t_menu
(
    id   int auto_increment
        primary key,
    name varchar(20) not null,
    pid  int         not null
);

create table t_role
(
    id   int auto_increment
        primary key,
    name varchar(20) not null
);

create table t_role_element
(
    id  int auto_increment
        primary key,
    rid int not null,
    eid int not null,
    constraint t_role_element_t_element_id_fk
        foreign key (eid) references t_element (id),
    constraint t_role_element_t_role_id_fk
        foreign key (rid) references t_role (id)
);

create table t_role_menu
(
    id  int auto_increment
        primary key,
    rid int not null,
    mid int not null,
    constraint t_role_menu_t_menu_id_fk
        foreign key (mid) references t_menu (id),
    constraint t_role_menu_t_role_id_fk
        foreign key (rid) references t_role (id)
);

create table t_user
(
    id       int auto_increment
        primary key,
    username varchar(32) not null,
    password varchar(32) not null
);

create table t_user_role
(
    id  int auto_increment
        primary key,
    uid int not null,
    rid int not null,
    constraint t_user_role_t_role_id_fk
        foreign key (rid) references t_role (id),
    constraint t_user_role_t_user_id_fk
        foreign key (uid) references t_user (id)
);


