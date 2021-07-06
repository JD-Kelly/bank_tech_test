# Bank Account

* Make deposits and withdraw
* Show account statement (date, amount, balance)

# Criteria
* Given a client makes a deposit of 1000 on 10-01-2012
* And a deposit of 2000 on 13-01-2012
* And a withdrawal of 500 on 14-01-2012
 
When she prints her bank statement she would see:

```
date || credit || debit || balance

14/01/2012 || || 500.00 || 2500.00

13/01/2012 || 2000.00 || || 3000.00

10/01/2012 || 1000.00 || || 1000.00
```

# User Story

```
As a User
So I can add my money
I would like to deposit money into my account.
```
```
As a User
So I can spend my money
I would like to withdraw money from my account.
```
```
As a User
So I can't go overdrawn
I would like to not withdraw more than is in my account.
```
```
As a User
So I can keep track of my spending
I would like a history of my latest transactions.
```

# How to run programme

* Clone this repo 
* Terminal: Run bundle install to install dependencies
* Terminal: Run rspec to run unit tests
* Terminal: Run irb -r './lib/account.rb'
