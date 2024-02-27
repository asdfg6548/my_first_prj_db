select *
from bank_account;

insert into bank_account (account_owner, balance)
values ('워렌버핏', 210000000),
       ('일론 머스크', 230000000),
       ('빌게이츠', 200000000),
       ('이재용', 100000000);

select *
from bank_account
order by balance desc;

select *
from bank_account
where account_number > 4; -- where 절의 조건에 들어온 인덱스가 사용되면서 정렬

select *
from drink_order
order by customer_id is null;

select customer_id, sum(total_amount)
from drink_order
group by customer_id
order by sum(total_amount) desc;

select *
from drink_order
order by case order_status
             when 'completed' then total_amount
             end;
