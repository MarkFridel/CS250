/*
Dungeon and Dragons Custom NPC List
*/

CREATE TABLE [Character] (
	CharacterID INT IDENTITY NOT NULL ,
	Name VARCHAR(50),
	Class VARCHAR(50),
	Race VARCHAR(50),
	[Stats] INT,
	CONSTRAINT pk_Character PRIMARY KEY (CharacterID)
);
go

--- INSERT DATA---
INSERT INTO [Character] (Name,Class,Race,[Stats])
	VALUES ('Jim','Cook','Human',12),
		   ('Joe','Blacksmith','Fairy',40);

---UPDATE---
UPDATE [Character] SET Name - 'Joseph',Class-'Barber'
WHERE [CharacterID]=3

---DELETE---
DELETE FROM [Character]
WHERE [CharacterID]=3

------------------------------------
select
from [Character]
---TRUNACATE TABLE---