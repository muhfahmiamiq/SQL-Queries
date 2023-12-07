# SQL-Queries

The questions are business questions that are answered with SQL queries. The database consists of 4 tables containing customer data, address data, order data and also merchant data from the RakaFood business.

### 1. The Risk Team is investigating customers who use Yahoo or Roketmail email, especially those who registered in the first quarter (January - March) 2012 and also have birthdays between January - March. Display name, email, month of birth and registration date information from customers who meet these criteria!

### 2. The Business Team wants to analyze the spending behavior of customers by categorizing each transaction into several buckets according to the amount of money spent by the customer. Spending buckets defined by the Business team are LOW (for transaction amounts after VAT not exceeding 20 thousand), MEDIUM (for transaction amounts after VAT exceeding 20 thousand and not exceeding 50 thousand) and HIGH (for transaction amounts after VAT above 50 thousand ). Display information on order_id, customer_id, price, price after VAT and spending_bucket according to the criteria from the Business team then sort by price after VAT from the largest.

### 3. The Merchant Acquisition Team wants to analyze the performance of existing merchants by looking at several metrics, namely the number of orders that have been received by each merchant and the total revenue (before VAT) that has been received by each merchant so far. Show merchant_id, number of orders and total income before VAT! Then sort them based on the amount of income from the highest.

### 4. The Payment Team wants to conduct an analysis of the most popular payment methods so far. Display payment methods and their frequency of use, but only display payment methods that have a usage frequency above 10! After that, sort them based on frequency from the most.

### 5. The Business Development team wants to think about expansion strategies to other cities. Before that, they want to know the inequality of customer populations in existing cities. They want to ask for information about the smallest number of customers in a city and also the largest customer population in the city with the most customers. Show these two numbers! (in the city with the smallest customer population, how many? and also for the city with the largest customer population, how much)?

### 6. The Payment team wants to deepen their analysis of payment methods. This time they want to see the detailed usage (frequency) of each type of payment for each existing merchant. Show merchant name (not just merchant_id), payment method and frequency of use!

### 7. The Marketing Team wants to give rewards to customers who have made transactions with a total quantity above 5. For this, display information on customer_id, total quantity, name and email for customers who meet these criteria! (Do it using Common Table Expression).
