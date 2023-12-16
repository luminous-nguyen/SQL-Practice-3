-- Ex 1
SELECT NAME 
FROM STUDENTS
WHERE MARKS > 75
ORDER BY RIGHT(NAME,3),ID
-- Ex2
select user_id, 
concat(upper(substr(name,1,1)),lower(substr(name,2,length(name)))) as name 
from users
-- Ex3
SELECT manufacturer, 
concat('$',ROUND(sum(total_sales)/1000000),  ' million') as sale
FROM pharmacy_sales
group by manufacturer
order by sum(total_sales) desc
-- Ex 4
SELECT EXTRACT(month from submit_date) as mth,
product_id as product,
round(avg(stars),2) as avg_stars
FROM reviews
group by product_id, EXTRACT(month from submit_date)
order by EXTRACT(month from submit_date), product_id
-- Ex 5
SELECT sender_id, count(message_id) as message_count
FROM messages
where DATE_PART('month',sent_date) = '08' AND DATE_PART('year',sent_date) = '2022'
group by sender_id
order by count(message_id) desc
limit 2
-- Ex 6
select tweet_id
from Tweets
where length(content) > 15
-- Ex 7
select activity_date as day, count(distinct(user_id)) as active_users
from Activity
where activity_date between '2019-06-27' and '2019-07-27'
group by activity_date
-- Ex 8
select count(id) as total_employee
from employees
where joining_date between '2022-01-01' and '2022-07-31'
-- Ex 9
select  position('a' in  first_name)
from worker
where first_name ='Amitah'
-- Ex 10
select substring(title,length(winery)+2,4)
from winemag_p2
where country = 'Macedonia'
