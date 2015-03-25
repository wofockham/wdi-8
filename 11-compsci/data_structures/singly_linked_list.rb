class SinglyLinkedList
  include Enumerable

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
    while node && node.next
      node = node.next
    end
    node
  end

  def insertAfter(node, new_node)
    new_node.next = node.next
    node.next = new_node
  end

  def append(value)
    last.next = Node.new(value)
  end

  def remove
    node = @head
    @head = node.next
    node
  end

  def length
    tally = 0
    node = @head
    while node.respond_to? :next
      node = node.next
      tally += 1
    end
    tally
  end

  def find(needle)
    node = @head
    until node.nil?
      return node if node.value == needle
      node = node.next
    end
    nil
  end

  def reverse
    reverse_list = SinglyLinkedList.new
    node = @head
    while node
      reverse_list.prepend(node.value)
      node = node.next
    end
    reverse_list
  end

  def reverse!
    @head = reverse.head
    self
  end

  def to_s
    self.map { |node| node }.join(', ')
  end

  def each
    node = @head
    while node
      yield node.value
      node = node.next
    end
  end

  class Node
    attr_accessor :value, :next

    def initialize(value=nil)
      @value = value
      @next = nil
    end

    def to_s
      @value || nil
    end
  end
end
