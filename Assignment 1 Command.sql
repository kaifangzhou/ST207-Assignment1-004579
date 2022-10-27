#Creating Tables
CREATE TABLE "member"(
	"id"	INTEGER,
	"email_address"	TEXT,
	"name"	TEXT,
	"password"	TEXT,
	"home_address"	TEXT,
	"phone_number"	TEXT,
	"shipping_address"	TEXT,
	"bank_account_number"	TEXT,
	"routing_number"	INTEGER,
	"is_buyer" Boolean,
	PRIMARY KEY("id")
);

CREATE TABLE "item" (
	"id"	INTEGER,
	"start_bidding_price"	REAL,
	"bidding_increment"	REAL,
	"title"	TEXT,
	"member_id"	INTEGER,
	FOREIGN KEY("member_id") REFERENCES "member"("id"),
	PRIMARY KEY("id")
);
	
CREATE TABLE "bid" (
	"id"	INTEGER,
	"price"	NUMERIC,
	"time"	REAL,
	"member_id"	INTEGER,
	"item_id"	INTEGER,
	PRIMARY KEY("id"),
	FOREIGN KEY("item_id") REFERENCES "item"("id"),
	FOREIGN KEY("member_id") REFERENCES "member"("id")
);
	
CREATE TABLE "feedback" (
	"id"	INTEGER,
	"comments"	TEXT,
	"rating"	REAL,
	"the_other_party"	TEXT,
	"member_id"	INTEGER,
	FOREIGN KEY("member_id") REFERENCES "member"("id"),
	PRIMARY KEY("id")
);

#Inserting 

INSERT INTO "member"(id,
    email_address,
	name,
    password,
    home_address,
	phone_number,
	shipping_address,
	bank_account_number,
	routing_number,
	is_buyer)
VALUES (1,'anastasia@test.com', 'annastasia', 'abc123456', 'London road', 123456789, NULL, 4567890123, 4567890123,"FALSE");

INSERT INTO "member"(id,
    email_address,
	name,
    password,
    home_address,
	phone_number,
	shipping_address,
	bank_account_number,
	routing_number,
	is_buyer)
VALUES (2,'jennifer@test.com', 'jennifer', 'def123456', 'Paris road', 987654321, NULL, 5678901234, 5678901234,"FALSE");

INSERT INTO "member"(id,
    email_address,
	name,
    password,
    home_address,
	phone_number,
	shipping_address,
	bank_account_number,
	routing_number,
	is_buyer)
VALUES (3,"helen@test.com", "helen", "ghi123456","Madrid road", 876543219, NULL, 6789012345, 6789012345,"FALSE");

INSERT INTO "member"(id,
    email_address,
	name,
    password,
    home_address,
	phone_number,
	shipping_address,
	bank_account_number,
	routing_number,
	is_buyer)
VALUES (4,"bob@test.com", "bob", "jkl123456","Berlin road", 765432198, "Berlin road", NULL, NULL, "TRUE");

INSERT INTO "member"(id,
    email_address,
	name,
    password,
    home_address,
	phone_number,
	shipping_address,
	bank_account_number,
	routing_number,
	is_buyer)
VALUES (5,"david@test.com", "david", "mno123456","Dublin road", 654321987, "Dublin road", NULL, NULL, "TRUE");

INSERT INTO "member"(id,
    email_address,
	name,
    password,
    home_address,
	phone_number,
	shipping_address,
	bank_account_number,
	routing_number,
	is_buyer)
VALUES (6,"olivia@test.com", "olivia", "pqr123456","Brussel road", 543219876, "Brussel road", NULL, NULL, "TRUE");
	
INSERT INTO "item" (id,
	start_bidding_price,
	bidding_increment,
	title,
	member_id
	)
VALUES(1,
	300,
	10,
	"vase",
	1);
	
INSERT INTO "item" (id,
	start_bidding_price,
	bidding_increment,
	title,
	member_id
	)
VALUES(2,
	200,
	10,
	"violin",
	1);
	
INSERT INTO "item"(id,
	start_bidding_price,
	bidding_increment,
	title,
	member_id)
VALUES(3,150,10,"chair",2);

INSERT INTO "item"(id,
	start_bidding_price,
	bidding_increment,
	title,
	member_id)
VALUES(4,250,10,"painting",3);
	
	
INSERT INTO "bid"(id,
	price,
	time,
	member_id,
	item_id)
VALUES(1,320,
	"2022-9-30 12:10",4,1);
	
INSERT INTO "bid"(id,
	price,
	time,
	member_id,
	item_id)
VALUES(2,350,"2022-10-02 12:30",5,1);

INSERT INTO "bid"(id,
	price,
	time,
	member_id,
	item_id)
VALUES(3,360,"2022-10-03 16:30",6,1);
	
INSERT INTO "bid"(id,
	price,
	time,
	member_id,
	item_id)
VALUES(4,170,"2022-10-08 17:30",5,3);
	
INSERT INTO "bid"(id,
	price,
	time,
	member_id,
	item_id
    )
VALUES(5,
	180,
	"2022-10-08 18:30",
	4,
	3
    );
	
	
INSERT INTO "bid"(id,
	price,
	time,
	member_id,
	item_id
    )
VALUES(6,
	190,
	"2022-10-08 20:30",
	4,
	3
    );
	
	
INSERT INTO "bid"(id,
	price,
	time,
	member_id,
	item_id
    )
VALUES(7,
	210,
	"2022-10-09 15:30",
	6,
	2
    );
	
INSERT INTO "bid"(id,
	price,
	time,
	member_id,
	item_id
    )
VALUES(8,
	220,
	"2022-10-09 16:50",
	4,
	2
    );

INSERT INTO "bid"(id,
	price,
	time,
	member_id,
	item_id
    )
VALUES(9,
	260,
	"2022-10-20 13:50",
	5,
	4
    );

INSERT INTO "feedback"(id,
	comments,
	rating,
	the_other_party,
	member_id
)
VALUES(
1,
"A really beautiful vase",
9.5,
1,
6);

INSERT INTO "feedback"(id,
	comments,
	rating,
	the_other_party,
	member_id
)
VALUES(
2,
"Olivia is a polite buyer",
9.5,
6,
1)；

INSERT INTO "feedback"(id,
	comments,
	rating,
	the_other_party,
	member_id
)
VALUES(
3,
"The violin worth the price",
8.0,
4,
1)；

INSERT INTO "feedback"(id,
	comments,
	rating,
	the_other_party,
	member_id
)
VALUES(
4,
"satisfied",
7.5,
1,
4)；

INSERT INTO "feedback"(id,
	comments,
	rating,
	the_other_party,
	member_id
)
VALUES(
5,
"A really confortable chair",
7.5,
5,
2)；

INSERT INTO "feedback"(id,
	comments,
	rating,
	the_other_party,
	member_id
)
VALUES(
6,
"Really happy to sell the chair out",
8.0,
2,
5)；

INSERT INTO "feedback"(id,
	comments,
	rating,
	the_other_party,
	member_id
)
VALUES(
7,
"Hope my painting will be taken care of",
8.5,
3,
5)；

INSERT INTO "feedback"(id,
	comments,
	rating,
	the_other_party,
	member_id
)
VALUES(
8,
"Hope my painting will be taken care of",
8.5,
3,
5)；


#List all members, the is_buyer field displayed suggesting whether buyer/seller
SELECT * FROM member;

#List all items, ordering ascending starting bid price
SELECT * FROM item
ORDER BY start_bidding_price ASC;

#Highest amount of each bid
SELECT MAX(price) AS final_bidding_price
FROM bid
GROUP BY item_id;

