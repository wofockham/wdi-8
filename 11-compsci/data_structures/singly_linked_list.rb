class SinglyLinkedList
  attr_accessor :head

  def initialize(first_element=nil)
    @head = Node.new(first_element) if first_element
  end

  def prepend(value)
    node = Node.new(value)
    node.next = @head
    @head = node
    self
  end

  def last
    node = @head
    while node.next
      node = node.next
    end
    node
  end

  def insertAfter(node, new_node)
  end

  def append(value)
  end

  def remove # removes and return the first node # like .shift()
  end

  def length
  end

  def find(needle)
  end

  def reverse
  end

  def reverse!
  end

  def to_s
  end

  class Node
    attr_accessor :value, :next

    def initialize(value=nil)
      @value = value
      @next = nil
    end
  end
end

# require 'pry'

# bros = SinglyLinkedList.new('groucho')

# binding.pry
