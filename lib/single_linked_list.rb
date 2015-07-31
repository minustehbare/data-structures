class SingleLinkedList

  attr_accessor :head
  
  def initialize
    @head = Node.new
  end
  
  class Node
    attr_accessor :pointer
    attr_accessor :data
    
    def initialize
      @data = 1
    end
  end
  
  class SentinelNode < Node
    def initialize
      @data = nil
      @pointer = nil
    end
  end
end

