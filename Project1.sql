if object_id('Campaign','U') is not null
	drop table Campaign;
create table Campaign(
	CampaignID int identity primary key,
	CampaignName varchar(50),
	ModuleName varchar(50)
);

if object_id('player','U') is not null
	drop table player;
create table player(
	PlayerID int identity primary key,
	PlayerFName varchar(50),
	PlayerLName varchar(50),
	NumberOfCharacter int,
);

if OBJECT_ID('player_Campaign','U') is not null
	drop table player_Campaign;
create table player_Campaign(
	PlayerID int ,
	CampaignID int  ,
	constraint fk_player_Campaign_Player foreign key (PlayerID) references Player(PlayerID),
	constraint fk_player_Campaign_Campaign foreign key (CampaignID) references Campaign(CampaignID),
	constraint pk_player_campain primary key (PlayerID, CampaignID)
);

if OBJECT_ID('Character','U') is not null
	drop table [Character]
create table [Character](
	CharacterID int identity primary key,
	CharacterName varchar(50),
	Race varchar (50),
	Class varchar(50),
	PlayerID int,
	constraint fk_player foreign key (PlayerID) references Player(PlayerID)
);

select *
from Campaign

select *
from player

select *
from Character

select *
from player_Campaign