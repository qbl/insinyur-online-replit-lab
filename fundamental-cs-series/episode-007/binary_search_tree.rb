require_relative 'node'

class BinarySearchTree
  attr_reader :root

  def initialize
    @root = nil
  end

  def insert(value, node=@root)
    return @root = Node.new(value) if node.nil?

    if value < node.value
      node.left.nil? ? node.left = Node.new(value) : insert(value, node.left)
    else
      node.right.nil? ? node.right = Node.new(value) : insert(value, node.right)
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
    return nil if node == nil

    deleted_node = node

    if value == node.value
      @root = nil
    elsif value < node.value
      deleted_node = @root.left
      @root.left = nil
    elsif value > node.value
      deleted_node = @root.right
    end

    deleted_node
  end
end
