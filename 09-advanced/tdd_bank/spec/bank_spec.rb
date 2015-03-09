require_relative 'spec_helper.rb'
require_relative '../bank.rb'

describe Bank do

  let(:bank) { Bank.new('TDD Bank') }

  describe '.new' do
    it 'creates a new Bank object' do
      expect(bank).to_not eq nil
    end

    it 'should have a name' do
      expect(bank.name).to eq 'TDD Bank'
    end

    it 'has no accounts' do
      expect(bank.accounts.count).to eq 0
    end
  end

  context 'Bob has $200 in his accounts' do

    before do
      bank.create_account('Bob', 200)
    end

    describe '#create_account' do
      it 'creates an account' do
        expect(bank.accounts['Bob']).to eq 200
      end

      it 'ignores deposits of negative amounts' do
        bank.create_account('Jorge', -200)
        expect(bank.accounts['Jorge']).to eq nil
      end
    end

    describe '#deposit' do
      it 'deposits an amount from a client into their account' do
        bank.deposit('Bob', 300)
        expect(bank.accounts['Bob']).to eq(200 + 300)
      end

      it 'ignores deposits of negative amounts' do
        bank.deposit('Bob', -1_000_000)
        expect(bank.balance('Bob')).to eq 200
      end
    end

    describe '#balance' do
      it 'returns the balance for client' do
        expect(bank.balance('Bob')).to eq 200
      end
    end

    describe '#withdraw' do # Not an effective form of contraception
      it 'subtracts money from the account' do
        bank.withdraw('Bob', 50)
        expect(bank.balance('Bob')).to eq(200 - 50)
      end

      it 'ignores requests for withdrawals that exceed the balance' do
        bank.withdraw('Bob', 1_000_000)
        expect(bank.balance('Bob')).to eq 200
      end
    end
  end
end




