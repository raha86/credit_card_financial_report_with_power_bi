-- Postgre SQL queries
-- --------------------

-- create database
CREATE DATABASE credit_card_db;


-- create table cc_detail 
CREATE TABLE cc_detail(
	Client_Num INT,
	Card_Category VARCHAR(20),
	Annual_Fees INT,
	Activation_30_Days INT,
	Customer_Acq_Cost INT,
	Week_Start_Date DATE,
	Week_Num VARCHAR(20),
	Qtr VARCHAR(10),
	current_year INT,
	Credit_Limit DECIMAL(10, 2),
	Total_Revolving_Bal INT,
	Total_Trans_Amt INT,
	Total_Trans_Vol INT, 
	Avg_Utilization_Ratio DECIMAL(10, 3), 
	Use_Chip VARCHAR(10),
	Exp_Type VARCHAR(50),
	Interest_Earned DECIMAL(10, 3),
	Delinquent_Acc VARCHAR(5)
);


-- create table cust_detail 
CREATE TABLE cust_detail(
	Client_Num INT,
	Customer_Age INT,
	Gender VARCHAR(10),
	Dependent_Count INT,
	Education_Level VARCHAR(50),
	Marital_Status VARCHAR(20),
	state_cd VARCHAR(50),
	Zipcode VARCHAR(20),
	Car_Owner VARCHAR(5),
	House_Owner VARCHAR(5),
	Personal_loan VARCHAR(5),
	contact VARCHAR(50),
	Customer_Job VARCHAR(50),
	Income INT,
	Cust_Satisfaction_Score INT
);


-- to copy data from credit_card.csv file to cc_detail table
COPY cc_detail
FROM 'D:\CAREER\EDUCATION\ENHANCE_SKILL\POWER_BI\Credit_card_financial_dashboard\credit_card.csv'
DELIMITER ','
CSV HEADER


-- to copy data from customer.csv file to cust_detail table
COPY cust_detail
FROM 'D:\CAREER\EDUCATION\ENHANCE_SKILL\POWER_BI\Credit_card_financial_dashboard\customer.csv'
DELIMITER ','
CSV HEADER


-- to add more data to cc_detail
COPY cc_detail
FROM 'D:\CAREER\EDUCATION\ENHANCE_SKILL\POWER_BI\Credit_card_financial_dashboard\cc_add.csv'
DELIMITER ','
CSV HEADER


-- to add more data to cust_detail
COPY cust_detail
FROM 'D:\CAREER\EDUCATION\ENHANCE_SKILL\POWER_BI\Credit_card_financial_dashboard\cust_add.csv'
DELIMITER ','
CSV HEADER