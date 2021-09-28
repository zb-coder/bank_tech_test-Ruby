require 'transaction'

describe Transaction do
  it 'has a transaction array' do
    expect(subject.transactions).to eq([])
  end

  describe '#credit' do
    it 'takes an argument' do
      expect(subject).to respond_to(:credit).with(1).argument  
    end

    it 'allows a deposit to be recorded in an array' do
      expect{subject.credit []}.to change{subject.transactions}.by []
    end

    describe '#debit' do
      it 'takes an argument' do
        expect(subject).to respond_to(:debit).with(1).argument
      end

      it 'allows a withdrawal to be recorded in an array' do
        expect{subject.debit []}.to change{subject.transactions}.by []
      end
    end
  end
end