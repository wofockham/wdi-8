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


end
