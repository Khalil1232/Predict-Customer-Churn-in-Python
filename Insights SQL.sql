/*Count the Number of Customers*/

SELECT COUNT(CustomerId) AS TotalCustomers FROM churn.churn_modelling;
    
/*Retrieve customers who have more than two products and are active members*/

SELECT * FROM churn.churn_modelling 
WHERE NumOfProducts > 2 
AND IsActiveMember = 1;

/*Calculate the total balance of customers grouped by their geography*/

SELECT Geography, SUM(Balance) AS TotalBalance 
FROM churn.churn_modelling 
GROUP BY Geography;

/*Find customers with both a high credit score (above 800) and a high balance (above 75,000)*/

SELECT * FROM churn.churn_modelling 
WHERE CreditScore > 800 
AND Balance > 75000;

/*Retrieve active customers (IsActiveMember = 1) who do not have a credit card (HasCrCard = 0)*/

SELECT * FROM churn.churn_modelling 
WHERE IsActiveMember = 1 
AND HasCrCard = 0;

/*Calculate the average age of customers who have exited (Exited = 1), grouped by gender*/

SELECT Gender, AVG(Age) AS AvgAge 
FROM churn.churn_modelling 
WHERE Exited = 1 
GROUP BY Gender;

/*Retrieve records of customers who have a credit score above 750 and belong to the same tenure range (5 years)*/

SELECT * FROM churn.churn_modelling 
WHERE CreditScore > 750 
AND Tenure IN (SELECT DISTINCT Tenure FROM churn.churn_modelling WHERE Tenure = 5);

/*Retrieve the top 10 customers with the highest estimated salaries*/

SELECT * FROM churn.churn_modelling 
ORDER BY EstimatedSalary DESC 
LIMIT 10;

/*Calculate the average age of customers who have a credit card and are active members*/

SELECT AVG(Age) AS AvgAge 
FROM churn.churn_modelling 
WHERE HasCrCard = 1 
AND IsActiveMember = 1;

