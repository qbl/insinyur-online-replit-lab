require_relative 'node'

class BinarySearchTree
  attr_reader :root

  def initialize
    @root = nil
  end

  def insert(value)
    unless @root
      @root = Node.new(value)
    else
      current_node = @root
      previous_node = @root

      while current_node
        previous_node = current_node
        
        if value < previous_node.value
          current_node = current_node.left
        else
          current_node = current_node.right
        end
      end
      
      if value < previous_node.value
        previous_node.left = Node.new(value)
      else
        previous_node.right = Node.new(value)
      end
    end
  end
end
