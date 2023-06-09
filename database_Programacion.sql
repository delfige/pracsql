create database animale; 
use animale;

create table if not exists COLOR (
  COLOR_ID INT not null AUTO_INCREMENT, 
  COLOR_NOM varchar (50) not null, 
  primary key (COLOR_ID) 
  );
  

create table if not exists ESPECIE( 
ESP_ID INT not null AUTO_INCREMENT,
 ESP_NOM varchar (50) not null,
 primary key (ESP_ID) 
 );


create table if not exists ANIMALES ( 
ANI_ID INT not null AUTO_INCREMENT , 
ANI_NOM varchar (50) not null , 
ANI_COL_ID int not null, 
ANI_ESP_ID int not null, 
primary key (ANI_ID),
foreign key (ANI_COL_ID) references COLOR (COLOR_ID),
foreign key (ANI_ESP_ID) references ESPECIE (ESP_ID)  
);
 
INSERT INTO COLOR (COLOR_ID, COLOR_NOM) VALUES (NULL, "NEGRO");
INSERT INTO COLOR (COLOR_ID, COLOR_NOM) VALUES (NULL, "GRIS");
INSERT INTO ESPECIE (ESP_ID, ESP_NOM) VALUES (NULL, "MAMIFEROS");
INSERT INTO ESPECIE (ESP_ID, ESP_NOM) VALUES (NULL, "AVES");
INSERT INTO ANIMALES (ANI_ID,ANI_NOM, ANI_COL_ID , ANI_ESP_ID) VALUES (null,'GATO', 2,1);
INSERT INTO ANIMALES (ANI_ID,ANI_NOM, ANI_COL_ID , ANI_ESP_ID ) VALUES (null,'PERRO', 1,1);
INSERT INTO ANIMALES (ANI_ID,ANI_NOM, ANI_COL_ID , ANI_ESP_ID ) VALUES (null,'VACA', 1,1);
INSERT INTO ANIMALES (ANI_ID,ANI_NOM, ANI_COL_ID , ANI_ESP_ID ) VALUES (null,'PALOMA', 2,2);


UPDATE ANIMALES SET ANI_NOM='OVEJA' WHERE ANI_ID=3;
DELETE FROM ANIMALES WHERE ANI_ID=2;
SELECT * FROM COLOR a
JOIN ESPECIE b ON A.COLOR_ID = B.ESP_ID