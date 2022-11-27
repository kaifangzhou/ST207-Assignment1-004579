## ST207 - ASSIGNMENT 1

Feedback and provisional marks

### DATABASE DESIGN

#### A: Conceptual model design (max 20 points)
These are some points that I think it could be improved in  our model:
1) It would better that we can treat Member as superclass and buyer and seller as subclasses. You can check out our lecture note week 2 part 1 for details. 
2) We should relate bids entity with items entity. 
3) There should be a transaction relationship between buyer and seller. 
4) The feadback comes from transaction. However, this is not showed in your ERD.
5) The arrow lines are confusing.


#### B: E-R diagram (max 25 points)
Overall, the ERD is not well designed based on the conceptual model designed in part A. Some entities are missing in the ERD. Some cow's foot notations are not correctly used. For example, a member (seller) can place zero or more items to sell. A seller can bid on zero or many items. Please check out the baseline solution in github for details. 

### DATABASE CREATION (DDL)

#### C. Database creation (CREATE TABLE commands) (max 10 points)
Excellent!

#### D. Data loading (INSERT TABLE commands) (max 5 points)
Good. You can load multiple rows of data in one go. You don't have to repeat INSERT tablename command for every single row.


### DATABASE MANIPULATION (DML)

#### E: Correctly retrieving/displaying all information (max 10 points)
Excellent! 

#### F: Correctly retrieving/displaying all information (max 10 points)
Excellent!

#### G: Correctly retrieving/displaying all information (max 10 points)
Excellent!


#### H: Correctly retrieving/displaying all information (max 10 points)
Excellent!
## Your points

|Question | Max points| Your points|
|:--------|-----------:|-----------:|
|A 	 |      	20|      	10|
|B 	 |      	25|      	10|
|C   |      	10|      	10|
|D   |      	 5|      	4|
|E   |        10|       10|
|F 	 |      	10|       10|
|G 	 |      	10|       10|
|H   |      	10|       10|
|Total |     100|     	74|
