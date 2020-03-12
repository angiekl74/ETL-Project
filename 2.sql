-- Create schemas

-- Create tables
CREATE TABLE IF NOT EXISTS Tweet
(
    ID INTEGER NOT NULL,
    Tweet VARCHAR(200),
    "Retweet from" VARCHAR(50),
    User_name VARCHAR(20),
    Date DATE NOT NULL,
    PRIMARY KEY(ID)
);

CREATE TABLE IF NOT EXISTS Stock
(
    Date DATE NOT NULL,
    open_price DOUBLE PRECISION,
    high_price DOUBLE PRECISION,
    low_price DOUBLE PRECISION,
    close_price DOUBLE PRECISION,
    adj_close_price DOUBLE PRECISION,
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
