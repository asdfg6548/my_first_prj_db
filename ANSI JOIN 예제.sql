create table board_user
(
    id       int auto_increment primary key,
    username varchar(20) not null,
    location varchar(10) not null
);

create table post
(
    id            int auto_increment primary key,
    board_user_id int,
    posted_at     datetime default now(),
    content       varchar(255)
);

insert into board_user(username, location)
values ('sorbet0231', '서울'),
       ('landia92', '서울'),
       ('sungwoo7180', '울산'),
       ('msak1234', '런던'),
       ('yuope1022', '로마'),
       ('nucon84', '로마');

insert into post (board_user_id, content)
values (1, 'aah'),
       (2, 'bb bb'),
       (3, 'ccc cc'),
       (4, 'dded'),
       (5, 'eeeee'),
       (2, 'ffff'),
       (4, 'gggg'),
       (5, 'hhhh'),
       (1, 'iiii'),
       (2, 'jjjj');

select *
from board_user
         inner join post p
                    on board_user.id = p.board_user_id;

select *
from board_user
         left join post p
                   on board_user.id = p.board_user_id;

insert into post (board_user_id, content)
values (10, '10'),
       (15, '15');

select *
from board_user
         right join post p
                    on board_user.id = p.board_user_id;

-- MySQL 에서는 FULL OUTER JOIN 지원X
-- UNION 집합연산을 사용해서 FULL OUTER JOIN 구현 가능
select * from board_user
         left join post p on board_user.id = p.board_user_id
union
select * from board_user
    right join post p on board_user.id = p.board_user_id;
-- NATURE JOIN
create table private_info1
(
    id   int primary key auto_increment,
    name varchar(20),
    age  int
);

create table private_info2
(
    id      int primary key auto_increment,
    name    varchar(20),
    address varchar(50)
);

insert into private_info1 (name, age)
values ('user1', 10),
       ('user2', 11),
       ('user3', 12),
       ('user4', 13),
       ('user5', 20),
       ('user6', 25),
       ('user7', 44),
       ('user8', 50),
       ('user9', 71),
       ('user10', 88);

insert into private_info2(name, address)
VALUES ('user1', 'my home'),
       ('user2', 'office'),
       ('user3', 'hotel'),
       ('user4', 'apt'),
       ('user5', 'street'),
       ('user6', 'sky'),
       ('user7', 'boat'),
       ('user8', 'yard'),
       ('user9', 'building'),
       ('user10', 'forest');

-- 매우 암묵적으로 연결
select *
from private_info1
         natural join private_info2;

create table private_info3
(
    id                   int primary key auto_increment,
    name                 varchar(20),
    insurance_registered boolean
);

insert into private_info3 (name, insurance_registered)
values ('user1', TRUE),
       ('user10', FALSE),
       ('user2', TRUE),
       ('user3', TRUE),
       ('user4', TRUE),
       ('user5', TRUE),
       ('user6', FALSE),
       ('user7', FALSE),
       ('user8', FALSE),
       ('user9', FALSE);

select *
from private_info1 p1
         INNER join private_info3 p3
                    ON p1.name = p3.name;

create table device
(
    device_name varchar(20),
    disk_size   int
);

create table color_option
(
    color_name varchar(10)
);

insert into device
values ('갤럭시 s24', 1024),
       ('아이폰 15', 1024),
       ('갤럭시 s24', 512),
       ('아이폰 15', 512),
       ('갤럭시 s24', 256),
       ('아이폰 15', 256);

insert into color_option
values ('white'),
       ('balck'),
       ('blue');

select * from device
cross join color_option;
