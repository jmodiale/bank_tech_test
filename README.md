# Introduction
As part of the week 10 curriculum at Makers, we were challenged to create a program with the following specifications:

### Requirements

* You should be able to interact with your code via a REPL like IRB or Node.  (You don't need to implement a command line interface that takes input from STDIN.)
* Deposits, withdrawal.
* Account statement (date, amount, balance) printing.
* Data can be kept in memory (it doesn't need to be stored to a database or anything).

### Acceptance criteria

**Given** a client makes a deposit of 1000 on 10-01-2023  
**And** a deposit of 2000 on 13-01-2023  
**And** a withdrawal of 500 on 14-01-2023  
**When** she prints her bank statement  
**Then** she would see

```
date || credit || debit || balance
14/01/2023 || || 500.00 || 2500.00
13/01/2023 || 2000.00 || || 3000.00
10/01/2023 || 1000.00 || || 1000.00
```

### To use the app:
```
Clone this repository

Run bundle install

Run irb in the Command Line 

require './lib/account.rb'

require 'date' (optional as you can enter any dates you wish to use)

account = Account.new

account.deposit_amount(Date.today, 2000)

account.withdrawal_amount(Date.today, 500)

account.acct_statement
```

### User stories:

```
As a client,
So I can save money,
I want to deposit money into my account.
```

```
As a client,
So I can spend money,
I want to withdraw money from my account.
```

```
As a client,
So I know how much money I have,
I want to print the statement of my account.
```

### Code Process
I started off by breaking down the requirements into user stories in order to understand the relationship between any classes and methods. I built up the tests for the account.rb class first and set up the initial functions to simply add and remove money and check the balance.

