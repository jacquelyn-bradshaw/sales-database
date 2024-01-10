/* ---------------------
   ------- VIEWS -------
   ---------------------  */

--  PART 1 
/* 
CREATE OR REPLACE VIEW view_name - Indicates that you are
						creating a view and giving it a name.
AS 					  - This keyword is used to introduce
						the SELECT statement that defines the view.
SELECT column1,2,3..  - Specify the columns you want to include.
FROM base_table       - Table from which you are selecting data.
WHERE condition       - Optionally, you can include
						a WHERE clause to filter the data
WITH CHECK OPTION;    - ensures that any data modifications made
						through the view (e.g., INSERT, UPDATE)
                        will adhere to the specified condition
                        in the view's WHERE clause.
*/

/* 1. Using the shop dabase and Sales1 table, create a view
called 'vw_salesmen' selecting only the sales person and sales
amount columns */
USE shop;
CREATE VIEW view_salesmen
AS
SELECT store, week, day, salesperson, salesamount
FROM sales1;

SELECT * FROM view_salesmen;

/* 2. Use the view to find out the maximum sales mount for each
sales person, where the sale was over £70. */
SELECT salesperson, MAX(salesamount) AS max_sales
FROM view_salesmen
WHERE salesamount > 70
GROUP BY salesperson;