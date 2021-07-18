require_relative 'node'

class BinarySearchTree
  attr_reader :root

  def initialize
    @root = nil
  end

  def insert(value, node)
    unless node
      @root = Node.new(value)
    else
      if value < node.value
        unless node.left
          node.left = Node.new(value)
        else
          insert(value, node.left)
        end
      else
        unless node.right
          node.right = Node.new(value)
        else
          insert(value, node.right)
        end
      end
    end
  end

  def search(value, node)
    false
  end
end
