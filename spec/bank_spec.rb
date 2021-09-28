require 'bank'

describe Bank do
  it 'has a balance of 0' do
    expect(subject.balance).to eq(0)
  end


describe '#credit' do
  it 'takes an argument' do
    expect(subject).to respond_to(:credit).with(1).argument 
  end

  it 'allows a deposit to be made' do
    expect{subject.credit 1}.to change{subject.balance}.by 1
  end

  describe '#debit' do
    it 'takes an argument' do
      expect(subject).to respond_to(:debit).with(1).argument
    end

    it 'allows a debit to be made' do
      expect {subject.debit 1}.to change{subject.balance}.by -1
    end
  end
end


end