class Transaction

  attr_reader :transactions
  def initialize
    @transactions = []
  end

  def credit(amount)
    @transactions << amount
  end

end