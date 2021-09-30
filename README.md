# bank_tech_test-Ruby

## How to use the app

```
clone the repo
bundle install
require './lib/bank.rb'
account = Bank.new
account.credit('10/01/2023', 1000.00)
account.credit('13/01/2023', 2000.00)
account.debit('14/01/2023', 500.00)
puts account.print_sorted_array_with_header
```

## How to run tests
```
bundle install
rspec
```
## Specification

## How I approached the task

Initially I did not have a plan, I just wanted to be able to print the total balance and kind of did not follow the specification and had too many classes that did not make sense. However, I then started again, not from scratch as I kept my credit and debit methods. I added date and amount to both the credit and debit methods so the user can input both. I also added a transaction array to push that information to along with the balance.

In a separate statement class, I hard coded a header and used that in the bank class. I created a method that displays the transactions in reverse order which incorporates the hardcoded header from the statement class. 

In the future I would start off by planning and not just trying to do it.

### Requirements

You should be able to interact with your code via a REPL like IRB or the JavaScript console. (You don't need to implement a command line interface that takes input from STDIN.)
Deposits, withdrawal.
Account statement (date, amount, balance) printing.
Data can be kept in memory (it doesn't need to be stored to a database or anything.

### Acceptance criteria

**Given** a client makes a deposit of 1000 on 10/01/2023
**And** a deposit of 2000 on 13/01/2023
**And** a withdrawal of 500 on 14/01/2023
**When** she prints her bank statement
**Then** she would see

```
date || credit || debit || balance
14/01/2023 || || 500.00 || 2500.00
13/01/2023 || 2000.00 || || 3000.00
10/01/2023 || 1000.00 || || 1000.00
```

## User stories

```
As a User 
I would like to go to the bank
so that I can make a deposit of 1000 on 10/01/2023
```
```
As a User
I would like to go to the bank
so that I can make a deposit of 2000 on 13/01/2023
```
```
As a User
I would like to go to the bank 
so that I can make a withdrawal of 500 on 14/01/2023
```
```
As a User 
I would like to print a bank statement
so that I can see all my previous credits, debits and balances on each day
```

## Screenshot of app
![](images/irb%20image.png)
```
To use the app you can either put the lines 30 - 34 

```
account = Bank.new

account.credit('10/01/2023', 1000.00)

account.credit('13/01/2023', 2000.00)

account.debit('14/01/2023', 500.00)

puts account.print_sorted_array_with_header
```

and put ruby bank.rb into the console shown in the image above or you can use irb as shown in the image below.

![](images/ruby%20image.png)