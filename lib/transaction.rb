class Transaction

  attr_reader :transactions 
  def initialize
    @transactions = []
  end

  def credit(amount)
    @transactions << amount
  end

  def debit(amount)
    @transactions << amount
  end
end