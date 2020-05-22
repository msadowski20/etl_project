-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.
DROP TABLE times;
DROP TABLE collection;
DROP TABLE months;
DROP TABLE encyclopedia;

CREATE TABLE encyclopedia (
    ID VARCHAR(20)   NOT NULL,
    Name VARCHAR(20),
    Price INT,
    Location VARCHAR(20),
    Shadow_size INT,
    type VARCHAR(20),
    numerical_id INT,
    Gender VARCHAR(20),
    Species VARCHAR(20),
    CONSTRAINT pk_encyclopedia PRIMARY KEY (
        ID
     )
);

CREATE TABLE months (
    ID VARCHAR   NOT NULL,
    Jan BOOLEAN,
    Feb BOOLEAN,
    Mar BOOLEAN,
    Apt BOOLEAN,
    May BOOLEAN,
    Jun BOOLEAN,
    Jul BOOLEAN,
    Aug BOOLEAN,
    Dep BOOLEAN,
    Oct BOOLEAN,
    Nov BOOLEAN,
    Dec BOOLEAN,
    CONSTRAINT pk_months PRIMARY KEY (
        ID
     ),
	FOREIGN KEY (id) REFERENCES encyclopedia (id)
);

CREATE TABLE collection (
    email_address VARCHAR(20)   NOT NULL ,
    ID VARCHAR(20)   NOT NULL,
    type VARCHAR(20),
    caught BOOLEAN,
    donated BOOLEAN,
    resident BOOLEAN,
    PRIMARY KEY (email_address, ID),
	FOREIGN KEY (id) REFERENCES encyclopedia (id)
);

CREATE TABLE times (
    ID VARCHAR(20)   NOT NULL,
    time VARCHAR(20),
    CONSTRAINT pk_times PRIMARY KEY (
        ID
     ),
	FOREIGN KEY (id) REFERENCES encyclopedia (id)
);


