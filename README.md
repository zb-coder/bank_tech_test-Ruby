# bank_tech_test-Ruby

## Specification

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

## How to check tests
```
bundle install
rspec
```