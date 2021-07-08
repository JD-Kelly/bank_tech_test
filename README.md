# Bank Account

The aim of this programme was to allow users to:

* Make deposits and withdraw from their bank account
* Show the account statement highlighting the date, amount either deposited or withdrawn and the balance

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

# Technologies

* Programming Language: Ruby
* Testing Framework: Rspec
* Gems: Rubocop (Linting), Simplecov (Code Coverage)


# How to run programme

* Clone this repo 
* Terminal: Run bundle install to install dependencies
* Terminal: Run rspec to run unit tests
* Terminal: Run irb -r './lib/bank_account.rb'

```
:001 > new_account = BankAccount.new
:002 > new_account.deposit(100)
:003 > new_account.deposit(25)
:004 > new_account.withdraw(100)
:005 > new_account.statement

date || deposit || withdraw || balance
08/07/2021 || 100.00 ||  || 100.00
08/07/2021 || 25.00 ||  || 125.00
08/07/2021 ||  || 100.00 || 25.00
```
