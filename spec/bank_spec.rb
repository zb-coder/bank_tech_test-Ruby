require 'bank'

describe Bank do

  let(:bank) {Bank.new}

  describe '#initialize' do
    it 'has a balance of 0' do
      expect(subject.balance).to eq(0)
    end

    it 'has a transactions array' do
      expect(subject.transactions).to eq([])
    end
  end

    describe '#credit' do
      it 'takes an argument' do
        expect(subject).to respond_to(:credit).with(2).arguments
      end

      it 'allows a credit of 3000 to be made on ' do
        bank.credit('10/01/2023', 1000)
        bank.credit('13/01/2023', 2000)
        expect(bank.balance).to eq(3000)
      end

      describe '#debit' do
        it 'takes an argument' do
          expect(subject).to respond_to(:debit).with(2).arguments
        end

        it 'allows a debit 500 to be made' do
          bank.debit('14/01/2023', 500)
          expect(bank.balance).to eq(-500)
        end
      
        describe '#print_sorted_array_with_header' do
          it 'prints the bank statement' do
            bank.credit('10/01/2023', 1000)
            bank.credit('13/01/2023', 2000)
            bank.debit('14/01/2023', 500)
              expect(bank.print_sorted_array_with_header).to eq(
                ["14/01/2023 ||      ||  500  || 2500",
                 "13/01/2023 || 2000 ||       || 3000",
                 "10/01/2023 || 1000 ||       || 1000"])
            end
          end
        end
  end
end