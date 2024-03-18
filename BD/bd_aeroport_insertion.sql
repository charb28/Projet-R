-- pilote --
insert into pilote values(1, "MIRANDA", "SERGE", "PARIS", 21000);
insert into pilote values(2, "LETHANH", "NAHN", "TOULOUSE", 21000);
insert into pilote values(3, "TALADOOIRE", "GILLES", "NICE", 18000);
insert into pilote values(4, "BONFILS", "ELIANE", "PARIS", 17000);
insert into pilote values(5, "LAKHAL", "LOTFI", "TOULOUSE", 19000);
insert into pilote values(6, "BONFILS", "GERARD", "PARIS", 18000);
insert into pilote values(7, "MORCENAC", "PIERRE", "NICE", 17000);
insert into pilote values(8, "LAHIRE", "PHILIPPE", "LYON", 15000);
insert into pilote values(9, "CICCHETTI", "ROSINE", "NICE", 18000);
insert into pilote values(10, "CAVARERO", "ANNIE", "PARIS", 20000);

-- avion --
insert into avion values(1, "A300",300,"NICE");
insert into avion values(2, "A310",300,"NICE");
insert into avion values(3, "B707",250,"PARIS");
insert into avion values(4, "A300",280,"LYON");
insert into avion values(5, "CONCORDE",160,"NICE");
insert into avion values(6, "B747",460,"PARIS");
insert into avion values(7, "B707",250,"PARIS");
insert into avion values(8, "A310",300,"TOULOUSE");
insert into avion values(9, "MERCURE",180,"LYON");
insert into avion values(10, "CONCORDE",160,"PARIS");

-- vol --
#IMPORTANT => contraintes d'intégrité référentielles, le domaine de vol(PLNUM) doit être inclus dasn pilote(PLNUM) 
# le domaine de vol(AVNUM) doit être inclus dans celui de avion(AVNUM)
insert into vol values(100, "NICE", "TOULOUSE", '11:00', '18:20', 1, 1);
insert into vol values(101, "PARIS", "TOULOUSE", '17:00', '20:30', 1, 8);
insert into vol values(102, "TOULOUSE", "LYON", '14:00', '18:30', 2, 1);
insert into vol values(103, "TOULOUSE", "LYON", '18:00', '21:00', 5, 3);
insert into vol values(104, "PARIS", "NICE", '06:45', '10:30', 9, 1);
insert into vol values(105, "LYON", "NICE", '11:40', '13:30', 10, 2);
insert into vol values(106, "PARIS", "LYON", '8:30', '10:00', 1, 4);
insert into vol values(107, "NICE", "PARIS", '10:10', '12:10', 8, 4);
insert into vol values(108, "NANTES", "LYON", '09:30', '11:00', 1, 8);
insert into vol values(109, "NICE", "PARIS", '12:00', '14:30', 8, 2);
insert into vol values(110, "PARIS", "LYON", '15:10', '17:30', 9, 2);
insert into vol values(111, "LYON", "NANTES", '11:25', '12:25', 1, 2);
insert into vol values(112, "NICE", "LENS", '14:30', '18:30', 4, 5);
insert into vol values(113, "LENS", "PARIS", '18:05', '19:05', 3, 5);
insert into vol values(114, "PARIS", "TOULOUSE", '17:00', '18:00', 8, 9);
insert into vol values(115, "PARIS", "TOULOUSE", '18:00', '19:00', 7, 5);

