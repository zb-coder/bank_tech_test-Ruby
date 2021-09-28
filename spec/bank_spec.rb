require 'bank'

describe Bank do
  it 'has a balance of 0' do
    expect(subject.balance).to eq(0)
  end


describe '#deposit' do
  it 'takes an argument' do
    expect(subject).to respond_to(:deposit).with(1).argument 
  end

  it 'allows a deposit to be made' do
    expect{subject.deposit 1}.to change{subject.balance}.by 1
  end

end

end