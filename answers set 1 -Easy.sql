1. Who is the senior most employee based on job title?

select title,levels from employee
order by levels desc
limit 1

2. Which countries have the most Invoices?

select billing_country,count(*) as totalinvoices from invoice
group by billing_country
order by totalinvoices desc
limit 1

3. What are top 3 values of total invoice?

select total from invoice
order by total desc
limit 3 

4. Which city has the best customers? We would like to throw a promotional Music 
Festival in the city we made the most money. Write a query that returns one city that 
has the highest sum of invoice totals. Return both the city name & sum of all invoice 
totals

select billing_city,sum(total) as total_invoices from invoice
group by billing_city
order by total_invoices desc
limit 1

5. Who is the best customer? The customer who has spent the most money will be 
declared the best customer. Write a query that returns the person who has spent the 
most money

select cu.customer_id,first_name,last_name,sum(total)as total_spent 
 from customer as cu join invoice as i
 on cu.customer_id=i.customer_id
 group by cu.customer_id
 order by total_spent desc
 limit 1






