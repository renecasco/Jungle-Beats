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
  end
end
