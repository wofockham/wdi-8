require 'rails_helper'

RSpec.describe Fruit, :type => :model do

  it { should belong_to :shelf }

  describe "An apple" do
    before do
      @apple = Apple.create(:name => 'Granny Smith')
    end

    it 'should not be squishy' do
      expect(@apple.squishy?).to eq(false)
    end

    it 'should remember what class it is using Single Table Inheritance (STI)' do
      apple = Fruit.find @apple.id
      expect(apple).to_not eq(nil) # Existence/persistence
      expect(apple.class).to eq(Apple) # Class via STI
      expect(apple).to eq(@apple) # Same object
      expect(apple.is_a? Fruit).to eq(true) # Inheritance
      expect(apple.class.ancestors).to include(Fruit)
    end
  end

  describe "A pear" do
    before do
      @pear = Pear.create(:name => 'Nazi')
    end

    it 'should be kinda squishy' do
      expect(@pear.squishy?).to eq(true)
    end

    it 'should remember what class it is using Single Table Inheritance (STI)' do
      pear = Fruit.find @pear.id
      expect(pear).to_not eq(nil)
      expect(pear.class).to eq(Pear)
      expect(pear).to eq(@pear)
      expect(pear.is_a? Fruit).to eq(true)
      expect(pear.class.ancestors).to include(Fruit)
    end
  end
end
