require './lib/statement'

class Bank

  attr_reader :balance, :transactions
  def initialize(statement = Statement.new)
    @balance = 0
    @transactions = []
    @statement = statement
  end

  def credit(date, amount)
    @balance += amount
    transactions << "#{date} || #{amount} ||       || #{balance}"
  end

  def debit(date, amount)
    @balance -= amount
    transactions << "#{date} ||        || #{amount} || #{balance}"
  end

  def print_sorted_array_with_header
    @statement.statement_header
    sored_array = transactions.reverse.each do
      |i| i
    end
  end
end

account = Bank.new
account.credit('10/01/2023', 1000.00)
account.credit('13/01/2023', 2000.00)
account.debit('14/01/2023', 500.00)
puts account.print_sorted_array_with_header
