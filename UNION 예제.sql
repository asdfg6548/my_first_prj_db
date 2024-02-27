create table cat
(
    name  varchar(20),
    age   int,
    owner varchar(20),
    type  varchar(20)
);
create table dog
(
    name  varchar(20),
    age   int,
    owner varchar(20),
    type  varchar(20)
);

insert into cat
values ('도리', 2, 'su', 'black-cat'),
       ('모래', 4, 'kim', 'brown-cat');

insert into dog
values ('흰둥이', 3, '짱구', 'white-dog'),
       ('얼룩이', 5, 'lee', '달마시안');

select *
from cat
union
select *
from dog;

create table animal
(
    name  varchar(20),
    age   int,
    owner varchar(20),
    type  varchar(20)
);
insert into animal
values ('도리', 2, 'su', 'black-cat'),
       ('모래', 4, 'kim', 'brown-cat'),
       ('흰둥이', 3, '짱구', 'white-dog'),
       ('얼룩이', 5, 'lee', '달마시안');

select *
from cat
union
select *
from dog
union all
select *
from animal;

