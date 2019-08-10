class LinkedList
  attr_reader :head

  def initialize
    @head = nil
  end

  def append(data)
    return @head = Node.new(data) if head.nil?
    tail.next_node = Node.new(data)
  end

  def tail
    current_node = @head
    current_node = current_node.next_node while current_node.next_node
    current_node
  end

  def count
    return 0 if head.nil?
    current_node = @head
    counter = 1
    while current_node.next_node
      current_node = current_node.next_node
      counter += 1
    end
    counter
  end

  def to_string
    return head.data if head
    string = ""
  end

end
