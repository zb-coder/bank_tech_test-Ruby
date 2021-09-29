describe Statement do
  subject(:statement) { described_class.new('10/01/2023', 1000, 0, 1000) }

  describe '#initialize' do
    it 'should have a date' do
      expect(statement.date).to eq('10/01/2023')
    end
  end
end