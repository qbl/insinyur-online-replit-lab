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

  def delete(value, node=@root, parent_node=nil, mark=nil)
    return nil if node == nil

    deleted_node = node

    if value == node.value
      if parent_node == nil
        @root = nil
      else
        parent_node.public_send("#{mark}=", node.left || node.right) if node.left.nil? || node.right.nil?
      end
    elsif value < node.value
      deleted_node = delete(value, node.left, node, 'left')
    elsif value > node.value
      deleted_node = delete(value, node.right, node, 'right')
    end

    deleted_node
  end
end
