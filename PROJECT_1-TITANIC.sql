create database PROJECT_1;
USE PROJECT_1;
select * from titanic;

#QUESTION_1
#What is the total count of records in a table?
#answer
SELECT COUNT(*) FROM titanic;

#QUESTION_2
#What is the average value of a specific column in a table?
#answer
SELECT AVG(Fare) FROM titanic;

#QUESTION_3
#What are the top 10 most frequent values in a specific column of a table?
#answer
SELECT Age, COUNT(*) as count FROM titanic GROUP BY Age ORDER BY count DESC LIMIT 10; 

#QUESTION_4
#What is the maximum value of a specific column in a table for each group in another column?
#answer
SELECT Ticket, MAX(Fare) FROM titanic GROUP BY Ticket;

#QUESTION_5
#What is the total sum of a specific column in a table based on a condition in another column?
#answer
SELECT SUM(column_name) FROM table_name WHERE condition_column = 'condition_value';

#QUESTION_6
#show the names of customers
#answer
select Name from titanic;

#QUESTION_7
#count how many males and females in this dataset
#answer
select sex, count(*) from titanic
group by sex;