drop database if exists baseballstats;

-- Create new database and connect it
create database if not exists baseballstats;
use baseballstats;

CREATE TABLE if not exists team
(	TeamID	CHAR(5)				NOT NULL,
	School	VARCHAR(35)			NOT NULL,
    Conference	VARCHAR(25)		NOT NULL,
    Street	VARCHAR(25)			NOT NULL,
    City	VARCHAR(15)			NOT NULL,
    State	CHAR(2)				NOT NULL,
    Zip		CHAR(5)				NOT NULL,
    Win		CHAR(2)				NOT NULL,
    Loss	CHAR(2)				NOT NULL,
    Draw	CHAR(2)				NOT NULL,
    PRIMARY KEY	(TeamID)	);
    
CREATE TABLE if not exists player
(	PlayerID	CHAR(5)			NOT NULL,
	TeamID		CHAR(5)			NOT NULL,
    FirstName	VARCHAR(15)		NOT NULL,
    LastName	VARCHAR(15)		NOT NULL,
    PlayerNum	CHAR(2)			NOT NULL, 
    PlayerPos	CHAR(2)			NOT NULL,
    B_T			CHAR(3)			NOT NULL,
    Height		CHAR(4)			NOT NULL,
    Weight		CHAR(3)			NOT NULL,
    Class		CHAR(3)			NOT NULL,
    PRIMARY KEY (PlayerID),
    FOREIGN KEY	(TeamID) REFERENCES team(teamID)	);
    
CREATE TABLE if not exists hitter
(	HitterID	CHAR(3)			NOT NULL,
	PlayerID	CHAR(5)			NOT NULL,
    Games		CHAR(3)			NOT NULL,
    AtBats		INT				NOT NULL,
    R			INT				NOT NULL,
    H			INT				NOT NULL,	
    2B			INT				NOT NULL,
    3B			INT				NOT NULL,	
    HR			INT				NOT NULL,
    RBI			INT				NOT NULL,
    BB			INT				NOT NULL,
    K			INT				NOT NULL,
    SB			INT				NOT NULL,
    CS			INT				NOT NULL,
    BatAvg		NUMERIC(4,3)	NOT NULL,
    OBP			NUMERIC(4,3)	NOT NULL,
    SLG			NUMERIC(4,3)	NOT NULL,
    PRIMARY KEY (HitterID),
    FOREIGN KEY (PlayerID) REFERENCES player(PlayerID)			);
    
CREATE TABLE if not exists pitcher
(	PitcherID	CHAR(5)			NOT NULL,
	PlayerID	CHAR(5)			NOT NULL,
    ERA			CHAR(3)			NOT NULL,
    W			INT				NOT NULL,
    L			INT				NOT NULL,
    APP			INT				NOT NULL,
    GS			INT				NOT NULL,
    SV			INT				NOT NULL,
    IP			INT				NOT NULL,
    ER			INT				NOT NULL,
    BB			INT				NOT NULL,
    SO			INT				NOT NULL,
    B_AVG		NUMERIC(4,3)	NOT NULL,
    HBP			INT				NOT NULL,
    BK			INT				NOT NULL,
    PRIMARY KEY (PitcherID),
    FOREIGN KEY (PlayerID) REFERENCES player(PlayerID)		);
    
    
    
    
    
    
   