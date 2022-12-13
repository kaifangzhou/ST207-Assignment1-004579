## ST207 - ASSIGNMENT 1

Feedback and provisional marks

### DATABASE DESIGN

#### A: Conceptual model design (max 20 points)
You have listed most of entities with attributes, relationship with cardinality correctly. Here are some points that could be improved in your model. 
1) It is a bit confusing that the relationship lines are with arrows. 
2) Notations are missing to denote Subclasses (buyer and seller) in your model. Please check out lecture note week 2 page 13 for details. 
3) It will make more sense to connect buyer and seller with a transaction entity and then realte transaction entity with a feadback entity. 
4) We should relate bids entity with items entity. 
5) Why there is Winner entity? 


#### B: E-R diagram (max 25 points)
Overall the E-R diagram is not well designed based on your conceptual model in part A. Crow's foot notions are not correctly used in many places. For example, in your conceptual model in part A, a seller can place zero or many items for auction. However, the crow's foot notation that you used in E-R diagram shows that the seller can place one and only one item. Also, in your conceptual model, you assume that a buyer can place zero or many bits, however, the crow's foot notation in your E-R diagaram means the buyer can place many bits, which is not correct according to your conceptual model in part A. Where is the FK for every entity?
### DATABASE CREATION (DDL)

#### C. Database creation (CREATE TABLE commands) (max 10 points)
Excellent!

#### D. Data loading (INSERT TABLE commands) (max 5 points)
Good. You can load multiple rows of data in one go. You don't have to repeat INSERT tablename command for every single row.


### DATABASE MANIPULATION (DML)

#### E: Correctly retrieving/displaying all information (max 10 points)
Good. It is just the member table. It would better that if you could just return two columns: one column for member_name and one column to state who is seller and who is buyer. This will help reader to understand the output. 

#### F: Correctly retrieving/displaying all information (max 10 points)
Excellent. It will be good that the output only has two columns: item_name and start_biding_price. This will make the final output easier to read. 

#### G: Correctly retrieving/displaying all information (max 10 points)
Excellent. 

#### H: Correctly retrieving/displaying all information (max 10 points)
Excellent. I think it would be better to consider the average rating for each buyer and seller. 

## Your points

|Question | Max points| Your points|
|:--------|-----------:|-----------:|
|A 	 |      	20|      	12|
|B 	 |      	25|      	13|
|C   |      	10|      	10|
|D   |      	 5|      	4|
|E   |        10|       8|
|F 	 |      	10|       8|
|G 	 |      	10|       10|
|H   |      	10|       9|
|Total |     100|     	74|
