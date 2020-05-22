-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.
DROP TABLE times;
DROP TABLE collection;
DROP TABLE months;
DROP TABLE encyclopedia;

CREATE TABLE encyclopedia (
    ID VARCHAR   NOT NULL,
    Name VARCHAR,
    Price INT,
    Location VARCHAR,
    Shadow_size INT,
    type VARCHAR,
    numerical_id INT,
    Gender VARCHAR,
    Species VARCHAR,
    PRIMARY KEY (ID)
);

CREATE TABLE months (
    ID VARCHAR   NOT NULL,
    Jan BOOLEAN,
    Feb BOOLEAN,
    Mar BOOLEAN,
    Apr BOOLEAN,
    May BOOLEAN,
    Jun BOOLEAN,
    Jul BOOLEAN,
    Aug BOOLEAN,
    Sep BOOLEAN,
    Dep BOOLEAN,
    Oct BOOLEAN,
    Nov BOOLEAN,
    Dec BOOLEAN,
    PRIMARY KEY (ID),
    FOREIGN KEY (id) REFERENCES encyclopedia (id)
);

CREATE TABLE collection (
    email_address VARCHAR   NOT NULL ,
    ID VARCHAR   NOT NULL,
    type VARCHAR,
    caught BOOLEAN,
    donated BOOLEAN,
    resident BOOLEAN,
    PRIMARY KEY (email_address, ID),
    FOREIGN KEY (id) REFERENCES encyclopedia (id)
);

CREATE TABLE times (
    ID VARCHAR   NOT NULL,
    time VARCHAR,
    PRIMARY KEY (ID),
    FOREIGN KEY (id) REFERENCES encyclopedia (id)
);


