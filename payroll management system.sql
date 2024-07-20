use payroll_management_system;
CREATE TABLE `employee` (
  `employee id` int(11) NOT NULL,
  `first_name` varchar(45) DEFAULT NULL,
  `last_name` varchar(45) DEFAULT NULL,
  `city` varchar(45) DEFAULT NULL,
  `state` varchar(45) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `user id` int(11) NOT NULL,
  PRIMARY KEY (`employee id`,`user id`)
) ;
CREATE TABLE `department` (
  `department id` int(11) NOT NULL,
  `department name` varchar(45) DEFAULT NULL,
  `department pass` varchar(45) DEFAULT NULL,
  `employee id` int(11) NOT NULL,
  PRIMARY KEY (`department id`,`employee id`),
  KEY `employee id_idx` (`employee id`),
  CONSTRAINT `employee id` FOREIGN KEY (`employee id`) REFERENCES `employee` (`employee id`) ON DELETE NO ACTION ON UPDATE NO ACTION
);
CREATE TABLE `login` (
  `login id` int(11) NOT NULL,
  `login username` varchar(45) DEFAULT NULL,
  `login pass` varchar(45) DEFAULT NULL,
  `login roll id` int(11) NOT NULL,
  `attendence id` int(11) NOT NULL,
  PRIMARY KEY (`login id`,`login roll id`,`attendence id`),
  KEY `attendence id_idx` (`attendence id`),
  CONSTRAINT `attendence id` FOREIGN KEY (`attendence id`) REFERENCES `attendence` (`attendence id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ;
CREATE TABLE `attendence` (
  `attendence id` int(11) NOT NULL,
  `hours work` varchar(45) DEFAULT NULL,
  `department id` int(11) NOT NULL,
  PRIMARY KEY (`attendence id`,`department id`),
  KEY `department id_idx` (`department id`),
  CONSTRAINT `department id` FOREIGN KEY (`department id`) REFERENCES `department` (`department id`) ON DELETE NO ACTION ON UPDATE NO ACTION
);
CREATE TABLE `account` (
  `account id` int(11) NOT NULL,
  `account holder name` varchar(45) DEFAULT NULL,
  `bank name` varchar(45) DEFAULT NULL,
  `salary id` int(11) NOT NULL,
  PRIMARY KEY (`account id`,`salary id`),
  KEY `salary id_idx` (`salary id`),
  CONSTRAINT `salary id` FOREIGN KEY (`salary id`) REFERENCES `salary` (`salary id`) ON DELETE NO ACTION ON UPDATE NO ACTION
);
CREATE TABLE `salary` (
  `salary id` int(11) NOT NULL,
  `salary amount` varchar(45) DEFAULT NULL,
  `salary type` varchar(45) DEFAULT NULL,
  `user id` int(11) NOT NULL,
  PRIMARY KEY (`salary id`,`user id`),
  KEY `user id_idx` (`user id`),
  CONSTRAINT `user id` FOREIGN KEY (`user id`) REFERENCES `employee` (`employee id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ;