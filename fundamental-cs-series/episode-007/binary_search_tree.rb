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
      
      if value < previous_node.value
        while current_node
          previous_node = current_node
          current_node = current_node.left
        end

        previous_node.left = Node.new(value)
      else
        @root.right = Node.new(value)
      end
    end
  end
end
