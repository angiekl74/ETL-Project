DROP TABLE Tweet, Stock;

-- Create schemas

-- Create tables
CREATE TABLE IF NOT EXISTS Tweet
(
    ID INTEGER NOT NULL,
    Tweet VARCHAR(200),
    Date DATE NOT NULL,
    Retweet_from DOUBLE PRECISION,
    User_Name VARCHAR(20),
    PRIMARY KEY(ID)
);

CREATE TABLE IF NOT EXISTS Stock
(
    Date DATE NOT NULL,
    Open_Price DOUBLE PRECISION,
    High_Price DOUBLE PRECISION,
    Low_Price DOUBLE PRECISION,
    Close_Price DOUBLE PRECISION,
    Adj_Close_Price DOUBLE PRECISION,
    Volume INTEGER,
    PRIMARY KEY(Date)
);


-- Create FKs
ALTER TABLE Tweet
    ADD    FOREIGN KEY (Date)
    REFERENCES Stock(Date)
    MATCH SIMPLE
;
    

-- Create Indexes
