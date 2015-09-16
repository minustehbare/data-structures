class SingleLinkedList
  attr_reader :head
  
  def tail
    tail_node = nil
    self.each { |node| tail_node = node }
    return tail_node
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
    self.each { |node| return node if node.data == data }
  end
  
  def find_by_index(x)
    return nil if x < 0
    i = 0
    self.each { |node|
      return node if x == i
      i += 1
    }
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
    output = "["
    self.each { |n|
      if output == "["
        output = "#{output}#{n.data}"
      else
        output = "#{output} -> #{n.data}"
      end
    }
    
    return "#{output}]"
  end
  
  class Node
    attr_accessor :pointer
    attr_reader :data
    
    def initialize(data = nil)
      data = Random.rand(1..99) unless data
      @data = data
    end

    def inspect
      return "#{@data} -> #{pointer.inspect}"
    end
  end
end

