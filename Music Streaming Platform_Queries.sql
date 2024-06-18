--  #1. Which countries have the most Invoices? 
 
SELECT COUNT(*) AS most_invoices, billing_country  
FROM invoice
GROUP BY billing_country
ORDER BY most_invoices DESC;

-- #2. What are top 3 values of total invoice?

SELECT total AS Highest_Invoices
FROM invoice
ORDER BY total DESC
LIMIT 3;

/*  #3. Who is the best customer? The customer who has spent the most money will be 
declared the best customer. Write a query that returns the person who has spent the 
most money*/

SELECT c.customer_id, c.first_name, c.last_name, SUM(i.total) AS Total_Amount_Spent
FROM customer c
JOIN invoice i
ON c.customer_id = i.customer_id
GROUP BY c.customer_id, c.first_name, c.last_name
ORDER BY Total_Amount_Spent DESC
LIMIT 1;

/*  #4. Which city has the best customers? We would like to throw a promotional Music 
Festival in the city we made the most money. Write a query that returns one city that 
has the highest sum of invoice totals. Return both the city name & sum of all invoice 
totals
*/

SELECT SUM(total) AS highest_invoices, billing_city AS city_name 
FROM invoice
GROUP BY billing_city
ORDER BY highest_invoices DESC
LIMIT 10;


/*  $5. Write a query to return the email, first name, last name, & Genre of all Rock Music 
listeners. Return your list ordered alphabetically by email starting with A */

SELECT DISTINCT c.email, c.first_name, c.last_name, g.genre_id, g.name
FROM customer c
JOIN invoice inv
ON c.customer_id = inv.customer_id
JOIN invoice_line invl 
ON inv.invoice_id = invl.invoice_id
JOIN track t
ON t.track_id = invl.track_id
JOIN genre g
ON g.genre_id = t.genre_id
where g.name LIKE 'Rock'
ORDER BY email;   

/* #6. Let's invite the artists who have written the most rock music in our dataset. Write a 
query that returns the Artist name and total track count of the top 10 rock bands */

SELECT a.name AS artist_name, COUNT(t.track_id) AS total_tracks_count
FROM Artist a
JOIN Album al ON a.artist_id = al.artist_id
JOIN Track t ON al.album_id = t.album_id
JOIN Genre g ON t.genre_id = g.genre_id
WHERE g.name = 'Rock'
GROUP BY a.name
ORDER BY total_tracks_count DESC
LIMIT 10;

/* #7. Find how much amount spent by each customer on artists? Write a query to return
customer name, artist name and total amount spent */

SELECT c.first_name, c.last_name, a.name AS artist_name, SUM(il.unit_price * il.quantity) AS total_spent
FROM Customer c
JOIN Invoice i ON c.customer_id = i.customer_id
JOIN Invoice_Line il ON i.invoice_id = il.invoice_id
JOIN Track t ON il.track_id = t.track_id
JOIN Album al ON t.album_id = al.album_id
JOIN Artist a ON al.artist_id = a.artist_id
GROUP BY c.customer_id, a.artist_id, c.first_name, c.last_name, artist_name
ORDER BY total_spent DESC;

/*  #8. Return all the track names that have a song length longer than the average song length. 
Return the Name and Milliseconds for each track. Order by the song length with the 
longest songs listed first */

SELECT t.name, t.milliseconds
FROM track t
WHERE t.milliseconds > (
  SELECT AVG(milliseconds) 
  FROM track
)
ORDER BY t.milliseconds DESC;

/*  #9. Write a query that determines the customer that has spent the most on music for each 
country. Write a query that returns the country along with the top customer and how
much they spent. For countries where the top amount spent is shared, provide all 
customers who spent this amount
*/

WITH country_customer_spend AS (
  SELECT 
    c.country, 
    c.customer_id, 
    c.first_name, 
    c.last_name, 
    SUM(il.unit_price * il.quantity) AS total_spend
  FROM Invoice i
  JOIN Invoice_Line il ON i.invoice_id = il.invoice_id
  JOIN Customer c ON i.customer_id = c.customer_id
  GROUP BY c.country, c.customer_id, c.first_name, c.last_name
)
SELECT
  country,
  GROUP_CONCAT(CONCAT(first_name, ' ', last_name) SEPARATOR ', ') AS top_customers,
  total_spend
FROM (
  SELECT
    country,
    first_name,
    last_name,
    total_spend,
    DENSE_RANK() OVER (PARTITION BY country ORDER BY total_spend DESC) AS rk
  FROM country_customer_spend
) ranked_spend
WHERE rk = 1
GROUP BY country, total_spend;

/* 10. We want to find out the most popular music Genre for each country. We determine the 
most popular genre as the genre with the highest amount of purchases. Write a query 
that returns each country along with the top Genre. For countries where the maximum 
number of purchases is shared return all Genres */

WITH country_genre_sales AS (
  SELECT 
    c.country, 
    g.name AS genre_name,
    SUM(il.quantity * il.unit_price) AS total_sales
  FROM Invoice i
  JOIN Invoice_Line il ON i.invoice_id = il.invoice_id
  JOIN Track t ON il.track_id = t.track_id
  JOIN Genre g ON t.genre_id = g.genre_id
  JOIN Customer c ON i.customer_id = c.customer_id
  GROUP BY c.country, g.name
)
SELECT
  country,
  GROUP_CONCAT(genre_name SEPARATOR ', ') AS top_genres
FROM (
  SELECT
    country,
    genre_name,
    total_sales,
    DENSE_RANK() OVER (PARTITION BY country ORDER BY total_sales DESC) AS rk
  FROM country_genre_sales
) ranked_sales
WHERE rk = 1
GROUP BY country;






