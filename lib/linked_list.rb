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
    if @head
      string = head.data
      current_node = @head
      while current_node.next_node
        string = "#{string} #{current_node.next_node.data}"
        current_node = current_node.next_node
      end
    else
      string = ""
    end
    string
  end

  def prepend(data)
    if @head
      @head = Node.new(data, @head)
    else
      @head = Node.new(data)
    end
  end

  def insert(position, data)
    count = 0
    if position == count
      prepend(data)
    else
      count = 1
      current_node = @head
      while current_node.next_node
        check_and_place_node(position, count, current_node, data)
        count += 1
        current_node = current_node.next_node
      end
    end
  end

  def check_and_place_node(position, count, current_node, data)
    if position == count
      current_node.next_node = Node.new(data, current_node.next_node)
    end
  end

  def find(position, elements)
    current_node = @head
    counter = 0
    while counter != position
      current_node = current_node.next_node
      counter += 1
    end

    counter = 0
    string = ""
    while counter != elements
      string = "#{string} #{current_node.data}"
      current_node = current_node.next_node
      counter += 1
    end
    string.lstrip
  end

  def includes?(value)
    true if self.to_string.include?(value)
  end

  def pop
    current_node = @head
    while current_node.next_node.next_node
      current_node = current_node.next_node
    end
    result = current_node.next_node.data
    current_node.next_node = nil
    result
  end
end
