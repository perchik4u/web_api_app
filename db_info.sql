-- Active: 1713522029862@@127.0.0.1@5432@postgres
CREATE TABLE Users 
(
    id UUID PRIMARY KEY,
    Name VARCHAR(20) NOT NULL,
    Login VARCHAR(16) NOT NULL,
    Password VARCHAR(16) NOT NULL,
    PhoneNumber VARCHAR(10) NOT NULL,
    CompanyID UUID,
    IsBoss BOOLEAN NOT NULL DEFAULT FALSE
);

CREATE TABLE Company
(
    id UUID PRIMARY KEY,
    Name VARCHAR(255) NOT NULL,
    BigBoss UUID,
    Country VARCHAR(255) NOT NULL
);

INSERT INTO Users (id, Name, Login, Password, PhoneNumber, CompanyID, IsBoss) VALUES ('123e4567-e89b-12d3-a456-426614174000', 'John Doe', 'johndoe', 'password123', '1234567890', '456f7890-1234-5678-90ab-1234567890ab', FALSE);

SELECT * FROM Users;