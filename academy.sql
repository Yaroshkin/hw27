DROP TABLE IF EXISTS "Teachers";
CREATE TABLE "Teachers" (
	"id"	INTEGER NOT NULL,
	"name"	TEXT NOT NULL,
	"surname"	TEXT NOT NULL,
	"patronic" TEXT NOT NULL,
	"Position"	TEXT NOT NULL,
	"Salary" INTEGER NOT NULL,
	"NameCafedr" TEXT NOT NULL,
	"FinancingCafedr" INTEGER NOT NULL,
	"NameGroup" TEXT NOT NULL,
	"RateGroup" INTEGER NOT NULL	
);

INSERT INTO "Teachers"  VALUES (1,"Иван","Петрович","Середа","Професор",1200,"Computer Science",13500,"OBD1",1);
INSERT INTO "Teachers"  VALUES (2,"Степан","Федорович","След","Професор",1100,"Nature Science",20000,"OBD2",8);
INSERT INTO "Teachers"  VALUES (3,"Антон","Сергеевич","Ганжа","Професор",1050,"Chemical",14000,"OBD2",2);
INSERT INTO "Teachers"  VALUES (4,"Алексей","Иванович","Вторник","Професор",800,"Mathematic",11500,"OBD1",6);
INSERT INTO "Teachers"  VALUES (5,"Юрий","Юриевич","Вишня","Професор",1300,"English",11500,"OBD2",7);
INSERT INTO "Teachers"  VALUES (6,"Петр","Петрович","Вниз","Професор",1500,"Phisic Science",13500,"OBD1",5);
INSERT INTO "Teachers"  VALUES (7,"Илья","Владмиривочи","Илююхин","Професор",900,"Mechanic",10500,"OBD2",10);
INSERT INTO "Teachers"  VALUES (8,"Андрей","Владиславович","Простой","Професор",1400,"Security Science",12000,"OBD1",9);
INSERT INTO "Teachers"  VALUES (9,"Иван","Антонович","Терехин","Професор",1000,"Science",9500,"OBD1",3);
INSERT INTO "Teachers"  VALUES (10,"Сергей","Алексеевич","Плохой","Професор",840,"higher mathematics",8500,"OBD1",4);

-- 1. Вывести таблицу кафедр, но расположить ее поля в обратном порядке. + сортировка по названию

SELECT * FROM "Teachers" ORDER BY NameCafedr ;


-- 2. Вывести названия групп и их рейтинги с уточнением имен полей именем таблицы. + сортировка по рейтингу от большего к меньшему + первые 3 

SELECT * FROM "Teachers" ORDER BY NameGroup AND RateGroup;
SELECT * FROM "Teachers" ORDER BY RateGroup DESC LIMIT 3;
-- 5. Вывести фамилии преподавателей, которые являются профессорами и ставка которых превышает 1050.

-- SELECT * FROM "Teachers" WHERE Salary >1050 ORDER BY surname;

-- 6. Вывести названия кафедр, фонд финансирования которых меньше 11000 или больше 25000.от 11000 до 25000

-- SELECT * FROM "Teachers" WHERE FinancingCafedr >= 11000 and FinancingCafedr <=25000 ORDER BY NameCafedr;

--7.. Вывести названия факультетов кроме факультета “Computer Science”

-- SELECT * FROM "Teachers" WHERE "NameCafedr" != "Computer Science"; 

