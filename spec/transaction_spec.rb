require 'transaction'

describe Transaction do
  it 'has a transaction array' do
    expect(subject.transactions).to eq([])
  end
end