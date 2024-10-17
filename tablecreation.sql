--table creation with derived columns

CREATE TABLE Table_USA (
    Customer_Name VARCHAR(255) NOT NULL,
    Customer_ID VARCHAR(18) NOT NULL PRIMARY KEY,
    Open_Dt DATE NOT NULL,
    Consul_Dt DATE,  
    VAC_ID CHAR(5),
    DR_Name VARCHAR(255),
    State CHAR(5),
    Country CHAR(5),
    DOB DATE,
    FLAG CHAR(1),
    Age INT AS (YEAR(CURRENT_DATE) - YEAR(DOB)),
    Days_Since_Last_Consult INT AS (DATEDIFF(CURRENT_DATE, Consul_Dt)),
    INDEX index_state (State),
    INDEX index_consul_Dt (Consul_Dt)
);

CREATE TABLE Table_IND (
    Customer_Name VARCHAR(255) NOT NULL,
    Customer_ID VARCHAR(18) NOT NULL PRIMARY KEY,
    Open_Dt DATE NOT NULL,
    Consul_Dt DATE,  
    VAC_ID CHAR(5),
    DR_Name VARCHAR(255),
    State CHAR(5),
    Country CHAR(5),
    DOB DATE,
    FLAG CHAR(1),
    Age INT GENERATED ALWAYS AS (YEAR(CURRENT_DATE) - YEAR(DOB)),
    Days_Since_Last_Consult INT GENERATED ALWAYS AS (DATEDIFF(CURRENT_DATE, Consul_Dt)),
    INDEX index_state (State),
    INDEX index_consul_Dt (Consul_Dt)
);

CREATE TABLE Table_PHIL (
    Customer_Name VARCHAR(255) NOT NULL,
    Customer_ID VARCHAR(18) NOT NULL PRIMARY KEY,
    Open_Dt DATE NOT NULL,
    Consul_Dt DATE,  
    VAC_ID CHAR(5),
    DR_Name VARCHAR(255),
    State CHAR(5),
    Country CHAR(5),
    DOB DATE,
    FLAG CHAR(1),
    Age INT GENERATED ALWAYS AS (YEAR(CURRENT_DATE) - YEAR(DOB)),
    Days_Since_Last_Consult INT GENERATED ALWAYS AS (DATEDIFF(CURRENT_DATE, Consul_Dt)),
    INDEX index_state (State),
    INDEX index_consul_Dt (Consul_Dt)
);

CREATE TABLE Table_NYC (
    Customer_Name VARCHAR(255) NOT NULL,
    Customer_ID VARCHAR(18) NOT NULL PRIMARY KEY,
    Open_Dt DATE NOT NULL,
    Consul_Dt DATE,  
    VAC_ID CHAR(5),
    DR_Name VARCHAR(255),
    State CHAR(5),
    Country CHAR(5),
    DOB DATE,
    FLAG CHAR(1),
    Age INT GENERATED ALWAYS AS (YEAR(CURRENT_DATE) - YEAR(DOB)),
    Days_Since_Last_Consult INT GENERATED ALWAYS AS (DATEDIFF(CURRENT_DATE, Consul_Dt)),
    INDEX index_state (State),
    INDEX index_consul_Dt (Consul_Dt)
);

CREATE TABLE Table_AU (
    Customer_Name VARCHAR(255) NOT NULL,
    Customer_ID VARCHAR(18) NOT NULL PRIMARY KEY,
    Open_Dt DATE NOT NULL,
    Consul_Dt DATE,  
    VAC_ID CHAR(5),
    DR_Name VARCHAR(255),
    State CHAR(5),
    Country CHAR(5),
    DOB DATE,
    FLAG CHAR(1),
    Age INT GENERATED ALWAYS AS (YEAR(CURRENT_DATE) - YEAR(DOB)),
    Days_Since_Last_Consult INT GENERATED ALWAYS AS (DATEDIFF(CURRENT_DATE, Consul_Dt)),
    INDEX index_state (State),
    INDEX index_consul_Dt (Consul_Dt)
);
