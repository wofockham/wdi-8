require_relative '../singly_linked_list'

describe SinglyLinkedList do
  context 'without an initial value' do
    before do
      @list = SinglyLinkedList.new
    end

    it 'should return an empty list' do
      @list = SinglyLinkedList.new
      expect(@list).to be
      expect(@list.head).to be_nil
    end

    describe '#prepend' do
      it 'should prepend a new value' do
        @list.prepend('Harpo')
        expect(@list.head.value).to eq('Harpo')
        expect(@list.head.next).to be_nil
      end
    end

    describe '#last' do
      it 'should be nil' do
        expect(@list.last).to be_nil
      end
    end

    describe '#find' do
      it 'should return nil' do
        expect(@list.find('Groucho')).to be_nil
      end
    end

    describe '#reverse' do
      it 'should return the original empty list' do
        expect(@list.reverse.length).to eq(0)
      end
    end
  end

  context 'with an initial value' do
    before do
      @list = SinglyLinkedList.new 'Groucho'
    end

    it 'should preserve that value in #head' do
      expect(@list.head).to be
      expect(@list.head.value).to eq('Groucho')
    end

    describe '#prepend' do
      it 'should prepend a new value' do
        @list.prepend('Harpo')
        expect(@list.head.value).to eq('Harpo')
        expect(@list.head.next.value).to eq('Groucho')
      end
    end

    describe '#last' do
      it 'should return the last node' do
        expect(@list.last).to eq(@list.head)

        @list.prepend('Harpo')
        expect(@list.last.value).to eq('Groucho')
      end
    end

    describe '#insert_after' do
      it 'should insert a new node after an existing node' do
        @list.append('Harpo')
        @list.append('Chico')
        groucho = @list.remove
        @list.insertAfter(@list.head, groucho)
        expect(@list.head.next.value).to eq('Groucho')
      end
    end

    describe '#length' do
      it 'should return the correct length' do
        expect(SinglyLinkedList.new.length).to eq(0)
        expect(@list.length).to eq(1)
        @list.prepend('Harpo')
        expect(@list.length).to eq(2)
      end
    end

    describe '#remove' do
      it 'should remove and return the first element' do
        first = @list.remove
        expect(@list.head).to be_nil
        expect(@list.length).to eq(0)
        expect(first.value).to eq('Groucho')
      end
    end

    describe '#append' do
      it 'should append a new value to the end of the list' do
        @list.append('Harpo')
        expect(@list.last.value).to eq('Harpo')
        expect(@list.head.value).to eq('Groucho')
        expect(@list.length).to eq(2)
      end
    end

    describe '#find' do
      it 'should find a node where present' do
        @list.append('Harpo')
        expect(@list.find('Groucho').value).to eq('Groucho')
        expect(@list.find('Harpo').value).to eq('Harpo')
      end

      it 'should return nil when needle is not found' do
        expect(@list.find('Margaret Dumont')).to be_nil
      end
    end

    describe '#reverse' do
      it 'should return a new list with the nodes in reverse order' do
        @list.prepend('Harpo')
        @list.append('Chico')
        reversed_list = @list.reverse
        expect(reversed_list.head.value).to eq('Chico')
        expect(reversed_list.last.value).to eq('Harpo')
        expect(reversed_list.length).to eq(3)
        # expect(reversed_list.reverse).to eq(@list)
      end
    end

    describe '#reverse!' do
      it 'should reverse the original list in place' do
        @list.prepend('Harpo')
        @list.append('Chico')
        @list.reverse!
        expect(@list.head.value).to eq('Chico')
        expect(@list.last.value).to eq('Harpo')
        expect(@list.length).to eq(3)
      end
    end

    describe '#to_s' do
      it 'should return a string of values' do
        @list.append('Harpo')
        @list.append('Chico')
        expect(@list.to_s).to eq('Groucho, Harpo, Chico')
      end
    end
  end
end