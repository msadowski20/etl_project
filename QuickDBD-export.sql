-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.


CREATE TABLE "encyclopedia" (
    "ID" VARCHAR(20)   NOT NULL,
    "Name" VARCHAR(20)   NOT NULL,
    "Price" INT   NOT NULL,
    "Location" VARCHAR(20)   NOT NULL,
    "Shadow_size" INT   NOT NULL,
    "type" VARCHAR(20)   NOT NULL,
    "numerical_id" INT   NOT NULL,
    "Gender" VARCHAR(20)   NOT NULL,
    "Species" VARCHAR(20)   NOT NULL,
    CONSTRAINT "pk_encyclopedia" PRIMARY KEY (
        "ID"
     )
);

CREATE TABLE "months" (
    "ID" VARCHAR   NOT NULL,
    "Jan" BOOLEAN   NOT NULL,
    "Feb" BOOLEAN   NOT NULL,
    "Mar" BOOLEAN   NOT NULL,
    "Apt" BOOLEAN   NOT NULL,
    "May" BOOLEAN   NOT NULL,
    "Jun" BOOLEAN   NOT NULL,
    "Jul" BOOLEAN   NOT NULL,
    "Aug" BOOLEAN   NOT NULL,
    "Dep" BOOLEAN   NOT NULL,
    "Oct" BOOLEAN   NOT NULL,
    "Nov" BOOLEAN   NOT NULL,
    "Dec" BOOLEAN   NOT NULL,
    CONSTRAINT "pk_months" PRIMARY KEY (
        "ID"
     )
);

CREATE TABLE "collection" (
    "email_address" VARCHAR(20)   NOT NULL,
    "ID" VARCHAR(20)   NOT NULL,
    "type" VARCHAR(20)   NOT NULL,
    "caught" BOOLEAN   NOT NULL,
    "donated" BOOLEAN   NOT NULL,
    "resident" BOOLEAN   NOT NULL,
    CONSTRAINT "pk_collection" PRIMARY KEY (
        "email_address","ID"
     )
);

CREATE TABLE "times" (
    "ID" VARCHAR(20)   NOT NULL,
    "time" VARCHAR(20)   NOT NULL,
    CONSTRAINT "pk_times" PRIMARY KEY (
        "ID"
     )
);

ALTER TABLE "encyclopedia" ADD CONSTRAINT "fk_encyclopedia_ID" FOREIGN KEY("ID")
REFERENCES "collection" ("ID");

ALTER TABLE "months" ADD CONSTRAINT "fk_months_ID" FOREIGN KEY("ID")
REFERENCES "encyclopedia" ("ID");

ALTER TABLE "times" ADD CONSTRAINT "fk_times_ID" FOREIGN KEY("ID")
REFERENCES "encyclopedia" ("ID");

