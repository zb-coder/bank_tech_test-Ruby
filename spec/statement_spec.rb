require 'statement'

describe Statement do
  subject(:statement) { described_class.new('10/01/2023', 1000, 0, 1000) }

  describe '#initialize' do
    it 'should have a date' do
      expect(statement.date).to eq('10/01/2023')
    end

    it 'should have a credit amount' do
      expect(statement.credit).to eq(1000)
    end

    it 'should have a debit amount' do
      expect(statement.debit).to eq(0)
    end

    it 'should have a balance' do
      expect(statement.balance).to eq(1000)
    end
  end
end