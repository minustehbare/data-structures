class SingleLinkedList
  include Enumerable
  attr_reader :head
  
  def tail
    return self.reduce(nil) { |tail, node| node }
  end
  
  def append(new_node)
    tail_node = self.tail
    if tail_node.nil?
      @head = new_node
    else
      tail_node.pointer = new_node
    end
  end
  
  def prepend(new_node)
    new_node.pointer = @head
    @head = new_node
  end
  
  def find_by_data(data)
    self.find { |node| node.data == data }
  end

  def find_by_index(x)
    self.each_with_index { |node, i| return node if i == x }
    return nil
  end
  
  def each
    return nil unless @head
    
    node = @head
    while node do
      yield(node)
      node = node.pointer
    end
  end
  
  def inspect
    return "[#{self.entries.map { |node| node.data }.join("->")}]"
  end
  
  class Node
    attr_accessor :pointer
    attr_reader :data
    
    def initialize(data = nil)
      data = Random.rand(1..99) unless data
      @data = data
    end

    def inspect
      return "#{@data}->#{pointer.inspect}"
    end
  end
end

