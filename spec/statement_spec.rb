require 'statement'

describe Statement do
  let(:statement) { described_class.new }
  it 'should have a header like the one in the read me' do
    expect { statement.statement_header }.to output("   date    || credit || debit || balance\n").to_stdout
  end
end
