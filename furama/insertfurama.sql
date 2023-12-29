use furamaResort;

insert into workPosition(position_name) values('manager'), ('staff');
insert into workLevel(level_name) values('Intermediate'), ('College'), ('University'), ('After university');
insert into department(dep_name) values('Sales-Marketing'), ('Administration'), ('Serve'), ('Manage');
insert into employees(empFullName, dob, identifier, salary, phone, email, address, position_id, level_id, dep_id)
values('Nguyễn Văn An', '1970-11-07', '456231786', '10000000', '0901234121', 'annguyen@gmail.com', '295 Nguyễn Tất Thành, Đà Nẵng', 1, 3, 1),
('Lê Văn Bình', '1997-04-09', '654231234', '7000000', '0934212314', 'binhlv@gmail.com', '22 Yên Bái, Đà Nẵng', 1, 2, 2),
('Hồ Thị Yến', '1995-12-12', '999231723', '14000000', '0412352315', 'thiyen@gmail.com', 'K234/11 Điện Biên Phủ, Gia Lai',1, 3, 2),
('Võ Công Toản', '1980-04-04', '123231365', '17000000', '0374443232', 'toan0404@gmail.com', '77 Hoàng Diệu, Quảng Trị', 1, 4, 4),
('Nguyễn Bỉnh Phát', '1999-12-09', '454363232', '6000000', '0902341231', 'phatphat@gmail.com', '43 Yên Bái, Đà Nẵng', 2, 1, 1),
('Khúc Nguyễn An Nghi', '2000-11-08', '964542311', '7000000', '0978653213', 'annghi20@gmail.com', '294 Nguyễn Tất Thành, Đà Nẵng', 2, 2, 3),
('Nguyễn Hữu Hà', '1993-01-01', '534323231', '8000000', '0941234553', 'nhh0101@gmail.com', '4 Nguyễn Chí Thanh, Huế', 2, 3, 2),
('Nguyễn Hà Đông', '1989-09-03', '234414123', '9000000', '0642123111', 'donghanguyen@gmail.com', '111 Hùng Vương, Hà Nội', 2, 4, 4),
('Tòng Hoang', '1982-09-03', '256781231', '6000000', '0245144444', 'hoangtong@gmail.com', '213 Hàm Nghi, Đà Nẵng', 2, 4, 4),
('Nguyễn Công Đạo', '1994-01-08', '755434343', '8000000', '0988767111', 'nguyencongdao12@gmail.com', '6 Hoà Khánh, Đồng Nai', 2, 3, 2);

insert into customerType(type_name) values ('Diamond'), ('Platinium'), ('Gold'), ('Silver'), ('Member');
insert into gender(des) values ('male'), ('female'), ('other');
insert into customers(cusFullName, dob, genderId, identifier, phone, email, type_id, address) values
('Nguyễn Thị Hào', '1970-11-07', 3, '643431213', '0945423362', 'thihao07@gmail.com', 5, '23 Nguyễn Hoàng, Đà Nẵng'),
('Phạm Xuân Diệu', '1992-08-08', 2, '865342123', '0954333333', 'xuandieu92@gmail.com', 3, 'K77/22 Thái Phiên, Quảng Trị'),
('Trương Đình Nghệ', '1990-02-27', 1, '488645199', '0373213122', 'nghenhan2702@gmail.com', 1, 'K323/12 Ông Ích Khiêm, Vinh'),
('Dương Văn Quan', '1981-07-08', 1, '543432111', '0490039241', 'duongquan@gmail.com', 1, 'K453/12 Lê Lợi, Đà Nẵng'),
('Hoàng Trần Nhi Nhi', '1995-12-09', 2, '795453345', '0312345678', 'nhinhi123@gmail.com', 4, '224 Lý Thái Tổ, Gia Lai'),
('Tôn Nữ Mộc Châu', '2005-12-06', 2, '732434215', '0988888844', 'tonnuchau@gmail.com', 4, '37 Yên Thế, Đà Nẵng'),
('Nguyễn Mỹ Kim', '1984-04-08', 3, '856453123', '0912345698', 'kimcuong84@gmail.com', 1, 'K123/45 Lê Lợi, Hồ Chí Minh'),
('Nguyễn Thị Hào', '1999-04-08', 2, '965656433', '0763212345', 'haohao99@gmail.com', 3, '55 Nguyễn Văn Linh, Kon Tum'),
('Trần Đại Danh', '1994-07-01', 1, '432341235', '0643343433', 'danhhai99@gmail.com', 1, '24 Lý Thường Kiệt, Quảng Ngãi'),
('Nguyễn Tâm Đắc', '1989-07-01', 2, '344343432', '0987654321', 'dactam@gmail.com', 2, '22 Ngô Quyền, Đà Nẵng');

insert into rentalType(rental_name) values ('year'), ('month'), ('day'), ('hour');
insert into typeOfService(serviceType_name) values ('villa'), ('house'), ('Room');
insert into services(serviceName, area, rentalFee, maxOfNumPeople, rental_id, serviceType_id, standard, descriptions, poolArea, floors) values
('Villa Beach Front', 25000, 10000000, 10, 3, 1, 'vip', 'have a pool', 500, 4),
('House Princess 01', 14000, 5000000, 7, 2, 2,'vip', 'have an oven', null, 3),
('Room Twin 01', 5000, 1000000, 2, 4, 3, 'normal', 'have a television', null, null),
('Villa No Beach Front', 22000, 9000000, 8, 3, 1, 'normal', 'have a pool', 300, 3),
('House Princess 02', 10000, 4000000, 5, 3, 2, 'normal', 'have an oven', null, 2),
('Room Twin 02', 3000, 900000, 2, 4, 3, 'normal', 'have a television', null, null);

insert into accompanies(acc_name, price, unit, acc_status) values
('Karaoke', 10000, 'hour', 'modern, conveniences'),
('Rent Motorcycles', 10000, 'unit', '1 motobike damaged'),
('Rent bicyle', 20000, 'unti', 'good'),
('Morning buffet', 15000, 'capacity', 'full of food and desserts'),
('Lunch buffet', 90000, 'capacity', 'full of food and desserts'),
('Evening buffet', 16000, 'capacity', 'full of food and desserts');

insert into contracts(contractDate, contractEndDate, deposits, empId, cusId, serviceId) values
('2020-12-08', '2020-12-08', 0, 3, 1, 3),
('2020-07-14', '2020-07-21', 200000, 7, 3, 1),
('2021-03-15', '2021-03-17', 50000, 3, 4, 2),
('2021-01-14', '2021-01-18', 100000, 7, 5, 5),
('2021-07-14', '2021-07-15', 0, 7, 2, 6),
('2021-06-01', '2021-06-03', 0, 7, 7, 6),
('2021-09-02', '2021-09-05', 100000, 7, 4, 4),
('2021-06-17', '2021-06-18', 150000, 3, 4, 1),
('2020-11-19', '2020-11-19', 0, 3, 4, 3),
('2021-04-12', '2021-04-14', 0, 10, 3, 5),
('2021-04-25', '2021-04-25', 0, 2, 2, 1),
('2021-05-25', '2021-05-27', 0, 7, 10, 1);

insert into detailedcontract(contractId, acc_id, amount) values
(2, 4, 5),
(2, 5, 8),
(2, 6, 15),
(3, 1, 1),
(3, 2, 11),
(1, 3, 1),
(1, 2, 2),
(12, 2, 2);
