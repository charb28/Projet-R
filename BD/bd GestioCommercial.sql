create database GestionCommercial;

use GestionCommercial;

create table Client(
mat_client varchar(10) primary key,
nom_cl varchar(20),
ad_cl varchar(10)
);

create table Commande(
num_com varchar(10) primary key,
date_com date,
mat_client varchar(10),
foreign key(mat_client) references client (mat_client)
);

create table Produit(
num_prod varchar(10) primary key,
nom_produit varchar(10),
prix_unit float,
qte_stock int 
);

create table Ligne_Com(
num_com varchar(10),
num_prod varchar(10),
qte_com int,
primary key(num_com,num_prod),
foreign key(num_com) references Commande(num_com),
foreign key(num_prod) references Produit(num_prod) 
);

insert into client values
("CL1","G.Lagaffe","Metz"),
("CL2","R.Hochet","Paris"),
("CL3","C.Maltese","Epinal"),
("CL4","A.Blansec","Paris");

insert into Commande values
("C1","2011-02-01","CL1"),
("C2","2012-06-13","CL4"),
("C3","2012-06-13","CL3"),
("C4","2012-07-05","CL3"),
("C5","2012-09-06","CL1");


insert into Produit values
("P1","vis","1","1000"),
("P2","boulon","0.5","1200"),
("P3","écrou","0.5","1200"),
("P4","pointe","0.2","1557"),
("P5","marteau","5","10"),
("P6","tournevis","5","22");

insert into Ligne_Com values
("C1","P4","20"),
("C2","P6","1"),
("C3","P1","20"),
("C3","P6","1"),
("C4","P1","20"),
("C5","P2","5"),
("C5","P3","5");

select * from Commande;
select * from Client;
select *  from client where ad_cl="Metz";
select count(*) as nombre  from Client where ad_cl ="Metz";
select count(*) as nombre from Commande where year (date_com)<"2012";
select distinct count(*) from Produit;
select sum(qte_stock) from Produit;
select *  from client where ad_cl in ("Paris");



