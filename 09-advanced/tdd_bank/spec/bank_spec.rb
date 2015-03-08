require_relative 'spec_helper.rb'
require_relative '../bank.rb'

describe Bank do
  describe '.new' do
    it 'creates a new Bank object' do
      bank = Bank.new('TDD Bank')
      expect(bank).to_not eq nil
    end

    it 'should have a name' do
      bank = Bank.new('TDD Bank')
      expect(bank.name).to eq 'TDD Bank'
    end
  end

  describe '#create_account' do
    it 'creates an account' do
      bank = Bank.new('TDD Bank')
      bank.create_account('Bob', 200)
      expect(bank.accounts['Bob']).to eq 200
    end
  end
end
