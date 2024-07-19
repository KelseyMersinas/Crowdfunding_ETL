CREATE TABLE "Campaign" (
    "cf_id" INTEGER(5)   NOT NULL,
    "contact_id" INTEGER(5)   NOT NULL,
    "company_name" VARCHAR(50)   NOT NULL,
    "description" VARCHAR(150)   NOT NULL,
    "goal" INTEGER(10)   NOT NULL,
    "pledged" INTEGER(10)   NOT NULL,
    "outcome" VARCHAR(10)   NOT NULL,
    "backers_count" INTEGER(5)   NOT NULL,
    "country" VARCHAR(2)   NOT NULL,
    "currency" VARCHAR(3)   NOT NULL,
    "launched_date" DATE(10)   NOT NULL,
    "end_date" DATE(10)   NOT NULL,
    "category_id" VARCHAR(10)   NOT NULL,
    "subcategory_id" VARCHAR(10)   NOT NULL,
    "last_updated" TIMESTAMP   NOT NULL,
    CONSTRAINT "pk_Campaign" PRIMARY KEY (
        "cf_id"
     )
);

SELECT * FROM campaign;

CREATE TABLE "Category" (
    "category_id" VARCHAR(5)   NOT NULL,
    "category" VARCHAR(20)   NOT NULL,
    "last_updated" TIMESTAMP   NOT NULL,
    CONSTRAINT "pk_Category" PRIMARY KEY (
        "category_id"
     )
);

SELECT * FROM category;

CREATE TABLE "Contacts" (
    "contact_id" INTEGER(5)   NOT NULL,
    "first_name" VARCHAR(20)   NOT NULL,
    "last_name" VARCHAR(20)   NOT NULL,
    "email" VARCHAR(50)   NOT NULL,
    "last_updated" TIMESTAMP   NOT NULL,
    CONSTRAINT "pk_Contacts" PRIMARY KEY (
        "contact_id"
     )
);

SELECT * FROM contacts;

CREATE TABLE "Subcategory" (
    "subcategory_id" VARCHAR(10)   NOT NULL,
    "subcategory" VARCHAR(30)   NOT NULL,
    "last_updated" TIMESTAMP   NOT NULL,
    CONSTRAINT "pk_Subcategory" PRIMARY KEY (
        "subcategory_id"
     )
);

SELECT * FROM subcategory;

ALTER TABLE "Campaign" ADD CONSTRAINT "fk_Campaign_contact_id" FOREIGN KEY("contact_id")
REFERENCES "Contacts" ("contact_id");

ALTER TABLE "Campaign" ADD CONSTRAINT "fk_Campaign_category_id" FOREIGN KEY("category_id")
REFERENCES "Category" ("category_id");

ALTER TABLE "Campaign" ADD CONSTRAINT "fk_Campaign_subcategory_id" FOREIGN KEY("subcategory_id")
REFERENCES "Subcategory" ("subcategory_id");