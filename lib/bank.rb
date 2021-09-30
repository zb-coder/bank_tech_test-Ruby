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
    @transactions << "#{date} ||#{amount}0 ||       || #{balance}0"
  end

  def debit(date, amount)
    @balance -= amount
    @transactions << "#{date} ||        ||#{amount}0 || #{balance}0"
  end

  def print_sorted_array_with_header
    @statement.statement_header
    @transactions.reverse.each do
      |i| puts i
    end
  end
end
