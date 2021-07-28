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

  def delete(value, node=@root, parent_node=nil)
    if node == nil
      deleted_node = nil
    elsif value == node.value
      deleted_node = node

      if parent_node == nil
        @root = nil
      else
        if node.right
          parent_node.left = min_value(node.right)
          delete(parent_node.left.value, node.right, node.right)

          parent_node.left.left = node.left
          parent_node.left.right = node.right
        elsif node.left
          parent_node.left = node.left
        else
          parent_node.left = nil
        end
      end
    else
      deleted_node = delete(value, node.left, node)
    end

    deleted_node
  end

  def min_value(node)
    if node.left == nil
      node
    else
      min_value(node.left)
    end
  end
end
