create database PROJECT_4;
use PROJECT_4;
select * from possum;

-- 1. show count of sex
-- answer
select count(sex) from possum;

-- 2. show footlgth, earconch, eye, age, sex of males
-- answer
select footlgth, earconch, eye, age, sex from possum where sex= 'm';

-- 3. show sex,age from possum  where age >=5 order by age desc
-- answer
select sex,age from possum  where age >=5 order by age desc;

-- 4. show age, taill where taill <34
-- answer
select age, taill from possum where taill <34 order by age desc; 

-- 5.
select age, max(chest) from possum group by age;

select sex,  count(sex) from possum group by sex;