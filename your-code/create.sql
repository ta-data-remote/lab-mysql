create database if not exists cardealership
character set utf8mb4 collate utf8mb4_0900_ai_ci;
USE cardealership;

drop table if exists `Cars`;
create table if not exists `Cars` (`ID` int AUTO_INCREMENT, 
`VIN` varchar(255), 
`Manufacturer` varchar(255),
`Model` varchar(255),
`Year` int,
`Color` varchar(255),
primary key (`ID`));

drop table if exists `Customers`;
create table if not exists `Customers` (`ID` int AUTO_INCREMENT, 
`Customer ID` int, 
`Name` varchar(255),
`Phone` varchar(255),
`Email` varchar(255),
`Address` varchar(255),
`City` varchar(255),
`State/Province` varchar(255),
`Country` varchar(255),
`Postal` int,
primary key (`ID`));

drop table if exists `Salespersons`;
create table if not exists `Salespersons` (`ID` int AUTO_INCREMENT, 
`Staff ID` int, 
`Name` varchar(255),
`Store` varchar(255),
primary key (`ID`));

drop table if exists `Invoices`;
create table if not exists `Invoices` (`ID` int AUTO_INCREMENT, 
`Invoice number` varchar(255), 
`Date` varchar(255),
`Car` int,
`Customer` int,
`Sales Person` int,
primary key (`ID`), 
foreign key (`Car`) REFERENCES `Cars`(`ID`), 
foreign key (`Customer`) REFERENCES `Customers`(`ID`),
foreign key (`Sales Person`) REFERENCES `Salespersons`(`ID`));
