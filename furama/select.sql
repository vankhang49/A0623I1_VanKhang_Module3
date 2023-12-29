use furamaResort;

select substring_index(empFullName, ' ', -1) from employees;

-- sentence 2
select * from employees where (substring_index(empFullName, ' ',-1) like 'H%' or
 substring_index(empFullName, ' ',-1) like 'T%' or
 substring_index(empFullName, ' ',-1) like 'K%') and char_length(empFullName) <= 15;
 
-- sentence 3
 select * from customers where (date_format(from_days(datediff(now(), dob)), '%y') between 18 and 50) and
 char_length(dob) <= 15;
 
 -- sentence 4
 select c.cusId, c.cusFullName, count(con.cusId) as count_booking from customers c
 left join contracts con on c.cusId = con.cusId where c.type_id = 1
 group by c.cusId order by count_booking;
 
 -- sentence 5
 select c.cusId, c.cusFullName, t.type_name, con.contractId, s.serviceName, con.contractDate, con.contractEndDate, sum(s.rentalFee + d.amount * a.price) as total_price from contracts con
 right join customers c on con.cusId = c.cusId join customerType t on c.type_id = t.type_id
 left join services s on con.serviceId = s.serviceId
 left join detailedContract d on con.contractId = d.contractId left join accompanies a on d.acc_id = a.acc_id
 group by con.contractId, c.cusId, t.type_name;

 -- sentence 6
select s.serviceId, s.serviceName, s.area, s.rentalFee, t.serviceType_name from services s
 join typeOfService t on s.serviceType_id = t.serviceType_id where serviceId not in (select serviceId
 from contracts where year(contractDate) = 2021 and month(contractDate) between 1 and 3);
 
 -- sentence 7
 select s.serviceId, s.serviceName, s.area, s.maxOfNumPeople, s.rentalFee, t.serviceType_name from services s
 join typeOfService t on s.serviceType_id = t.serviceType_id
 left join contracts c on s.serviceId = c.serviceId where year(c.contractDate) = 2020 and s.serviceId
 not in ( select ser.serviceId from services ser left join contracts con on ser.serviceId = con.serviceId
 where year(con.contractDate) = 2021) group by s.serviceId;

-- sentence 8
select cusFullName from customers group by cusFullName;
select distinct cusFullName from customers;
select c1.cusFullName from customers c1 where not exists(select c2.cusFullName from customers c2
where c2.cusFullName = c1.cusFullName and c2.cusId < c1.cusId);

-- sentence 9
select month(c.contractDate) as 'monthOf2021', count(c.cusId) as 'amount booking' from contracts c
where year(c.contractDate) = 2021 group by monthOf2021 order by monthOf2021;

-- sentence 10
select c.contractId, c.contractDate, c.contractEndDate, c.deposits, sum(d.amount) as 'amount accompanies'
from contracts c left join detailedcontract d on c.contractId = d.contractId group by c.contractId;

-- sentence 11
select a.acc_id, a.acc_name from accompanies a join detailedcontract d on a.acc_id = d.acc_id
join contracts c on d.contractId = c.contractId join customers cus on c.cusId = cus.cusId
where cus.type_id = 1 and (substring_index(cus.address, ' ', -1)  in ('Vinh', 'Quảng Ngãi'));

-- sentence 12
select c.contractId, e.empFullName, cus.cusFullname, cus.phone as 'customerPhone', s.serviceName,
sum(d.amount) as 'amount accompanies', c.deposits
from contracts c join employees e on c.empId = e.empId
left join customers cus on c.cusId = cus.cusId
left join services s on c.serviceId = s.serviceId
left join detailedcontract d on c.contractId = d.contractId
where year(c.contractDate) = 2020 and month(c.contractDate) between 10 and 12
and not exists (select contractId from contracts where year(c.contractDate) = 2021
and month(c.contractDate) between 1 and 6)
group by c.contractId;

-- sentence 13
select a.acc_id, a.acc_name, sum(d.amount) as 'max_amount' from accompanies a
join detailedcontract d on a.acc_id = d.acc_id
group by a.acc_id, a.acc_name having max_amount = (select sum(amount) as 'total_amount' 
from detailedcontract group by acc_id order by total_amount desc limit 1);

-- sentence 14
select d.contractId, t.serviceType_name, a.acc_name, count(d.acc_id) as 'amount_by_one' from accompanies a
join detailedcontract d on a.acc_id = d.acc_id
join contracts c on d.contractId = c.contractId
join services s on c.serviceId = s.serviceId
join typeofservice t on s.serviceType_id = t.serviceType_id where a.acc_name in (select a.acc_name from accompanies a 
join detailedcontract d on a.acc_id = d.acc_id group by a.acc_name having count(d.amount) = 1)
group by a.acc_name, d.contractId having count(d.acc_id) = 1 order by d.contractid;

-- sentence 15
select e.empId, e.empFullName, w.level_name, d.dep_name, e.phone, e.address from employees e
join workLevel w on e.level_id = w.level_id
join department d on e.dep_id = d.dep_id
join contracts c on e.empId = c.empId
group by e.empId having count(c.empId) <= 3;

-- sentence 16
delete from employees where empId in (select empId from (select e.empId from employees e left join contracts c on e.empId = c.empId
where c.empId is null) as temp);

-- sentence 17
update customers set type_id = 1 where type_id = 2 and cusId in (select c.cusId from contracts c join services s on c.serviceId = s.serviceId
left join detailedContract d on c.contractId = d.contractId
left join accompanies a on d.acc_id = a.acc_id
group by c.cusId
having sum(s.rentalFee + d.amount * a.price) > 10000000);

-- sentence 18
delimiter //
create trigger delete_contract_detailContract before delete on customers
for each row
begin
delete from detailedcontract where contractId in (select contractId from contracts where cusId = old.cusId);
delete from contracts where cusId = old.cusId;
end //
delimiter ;

drop trigger delete_contract_detailContract;

CREATE TEMPORARY TABLE temp (select distinct cus.cusId as cusID from customers cus join contracts c on cus.cusId = c.cusId
where year(c.contractDate) >= 2021);
drop TEMPORARY TABLE temp;
set sql_safe_updates = 0;
delete from customers where cusId not in (select cusID from temp);
set sql_safe_updates = 1;
drop temporary table temp;

-- sentence 19
update accompanies set price = price*2 where acc_id in (select d.acc_id from detailedcontract d join contracts c
on d.contractId = c.contractId where year(c.contractDate) = 2020 group by d.acc_id having sum(d.amount) > 10);

-- sentence 20
select cusId as 'Id', cusFullName as 'Full_name', email, phone, dob as 'Date_of_birth', address,
'customer' as type from customers union
select empId as 'Id', empFullName as 'Full_name', email, phone, dob as 'Date_of_birth', address,
'employee' as type from employees;

-- sentence 21
create view employees_view as select e.*, c.contractId, c.contractDate from employees e
join contracts c on e.empId = c.empId
where (substring_index(substring(e.address, locate(' ', e.address)+1), ',', 1) = 'Hải Châu') and
c.contractDate = '2019-12-12';

select * from employees_view;

-- sentence 22
update employees_view set address = concat(substring_index(address, ' ', 1), ' Liên Chiểu,',
 substring_index(address, ',', -1));

-- sentence 23
delimiter //
create procedure delete_customer_byCusId(in i_cusId int)
begin
delete from customers where cusId = i_cusId;
end //
delimiter ;

call delete_customer_byCusId(11);

-- sentence 24
delimiter //
create procedure add_new_contract(in i_contractDate date, in i_contractEndDate date, in i_deposits double,
 in i_empId int, in i_cusId int, in i_serviceId int)
begin
declare error_message varchar(255);
 -- Kiểm tra tính hợp lệ của dữ liệu bổ sung
if i_contractDate is null or i_contractEndDate is null or i_empId is null or i_cusId is null or i_serviceId is null
then set error_message = 'Please enter complete information';
end if;
 -- Kiểm tra tính hợp lệ của khóa chính cusId, contractDate
if exists (select * from contracts where cusId = i_cusId and contractDate = i_contractDate) then
set error_message = 'The contract already exists';
end if;
  -- Kiểm tra tính toàn vẹn tham chiếu
  if not exists (select * from customers where cusId = i_cusId) then
  set error_message = 'No customer information found';
  end if;
-- Thêm mới
insert into contracts(contractDate, contractEndDate, deposits, empId, cusId, serviceId)
 values (i_contractDate, i_contractEndDate, i_deposits, i_empId, i_cusId, i_serviceId);
 end //
 delimiter ;
 
 call add_new_contract('2022-02-02', '2022-02-04', 0, 11, 11, 1);
 
 -- sentence 25
 delimiter //
 create trigger trigger_deleteContract after delete on contracts
 for each row
 begin
 declare remaining_records int;
 set remaining_records = (select count(*) from contracts);

 if remaining_records > 0 then
	 signal sqlstate '45000'
	 set message_text = remaining_records;
end if;
 end //
 delimiter ;
 drop trigger trigger_deleteContract;
 
 delete from contracts where contractId = 13;
 
 -- sentence 26
 delimiter //
 create trigger trigger_updateContract before update on contracts
 for each row
 begin
 declare beginDate date;
 declare endDate date;
 set beginDate = new.contractDate;
 set endDate = new.contractEndDate;
 
 if endDate <= beginDate or datediff(endDate, beginDate) <=2 then
	signal sqlstate '45000'
	set message_text = 'Invalid end date!';
end if;
end //
delimiter ;

update contracts set contractEndDate = '2022-02-02' where contractId = 13;

-- sentence 27 a
delimiter //
create function countService() returns int
deterministic
reads sql data
begin
	declare count int;
	select count(*) into count from (select s.serviceId, count(c.serviceId)*s.rentalFee as 'totalFee' 
	from services s
	join contracts c on s.serviceId = c.serviceId group by s.serviceId having totalFee > 2000000)
    as countServices;
    return count;
end //
delimiter ;
select countService();

-- b
delimiter //
create function func_contractPeriod(i_cusId int) returns int
deterministic
reads sql data
begin
    declare max_date int;
    select max(datediff(contractEndDate, contractDate)) into max_date 
    from contracts where cusId = i_cusId;
    return max_date;
end //
delimiter ;

select func_contractPeriod(3);

-- sentence 28
delimiter //
create procedure delete_contractAndService_by(in i_serviceName varchar(50), in beginYear int,
in endYear int)
begin
    -- create temp table
    create temporary table temp_table (select c.contractId as contractId, c.serviceId as serviceId
    from contracts c join services s on c.serviceId = s.serviceId 
    where substring_index(s.serviceName, ' ', 1) = i_serviceName
    and year(c.contractDate) >= beginYear and year(c.contractEndDate) <= endYear);
    -- delete contract first
	delete from contracts where contractId in (select contractId from temp_table);
    -- then delete service
	delete from services where serviceId in (select serviceId from temp_table);
    -- finally delete temp table
    drop temporary table temp_table;
end //
delimiter ;

delimiter //
create trigger delete_detailedContract before delete on contracts
for each row
begin
delete from detailedcontract where contractId = old.contractId;
end //
delimiter ;

call delete_contractAndService_by('Room', 2019, 2021);
 