# Bank Tech Test

## Getting started

### Setup 
From the command line run the following:
```
git clone git@github.com:beca-g/bank-tech-test.git
cd bank-tech-test
```

### Install dependencies  
```
bundle
```

### To run tests
```
rspec
```

## Specification

### Requirements

* You should be able to interact with your code via a REPL like IRB. (You don't need to implement a command line interface that takes input from STDIN.)
* Deposits, withdrawal.
* Account statement (date, amount, balance) printing.
* Data can be kept in memory (it doesn't need to be stored to a database or anything).

### Acceptance criteria

**Given** a client makes a deposit of 1000 on 10-01-2020   
**And** a deposit of 2000 on 13-01-2020    
**And** a withdrawal of 500 on 14-01-2020  
**When** she prints her bank statement  
**Then** she would see

```
date || credit || debit || balance
14/01/2020 || || 500.00 || 2500.00
13/01/2020 || 2000.00 || || 3000.00
10/01/2020 || 1000.00 || || 1000.00
```

## User Stories

```
As a user  
So I can keep track of my finances  
I want to open a bank account  
```

```
As a user  
So I can store my money  
I want to be able to make deposits into my bank account  
```

```
As a user  
So I can spend my money  
I want to make withdrawals from my bank account
```

```
As a user  
So I keep track of my transactions  
I want to be able to print a statment  
```

```
As a user  
So that my bank statement is easy to read  
I want to see the newest transactions first  
``` 

## My approach 

I had a test driven and OOP approach to this challenge, firstly creating user stories and then carrying out a plan for the classes and structure.

### Planning
* I created the user stories based on the requirements and acceptance criteria. I then planned the basic structure of the code, breaking down the user stories into classes and methods by extracting the nouns and verbs from the user stories. For readability and to simplify my code as much as possible I decided to have three classes: Account, Transaction and Statement.


| Class       | Attributes                            | Methods                                  |
|-------------|---------------------------------------|------------------------------------------|
| Account     | - balance = 0<br>- transactions = [ ] | - withdrawal<br>- deposit<br>- statement |
| Transaction | - date<br>- type<br>- amount          |                                          |
| Statement   |                                       | - print                                    |

* I then took pen to paper and diagrammed and predicted how they would work together.   

![](https://imgur.com/KElJW1V.png)

## Test Coverage

![](https://imgur.com/ATqy96O.png)

## Running in IRB

![](https://imgur.com/REkUcBo.png)

## Tech
* ruby 2.7.0
* rspec
* simple-cov
* rubocop
