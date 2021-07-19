require_relative 'node'

class BinarySearchTree
  attr_reader :root

  def initialize
    @root = nil
  end

  def insert(value, node=@root)
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

  def search(value, node=@root)
    if node == nil
      false
    elsif value < node.value
      search(value, node.left)
    elsif value > node.value
      search(value, node.right)
    else
      true
    end
  end

  def delete(value, node=@root)
    node
  end
end
