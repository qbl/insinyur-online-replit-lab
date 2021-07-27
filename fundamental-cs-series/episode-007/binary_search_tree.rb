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

  def delete(value, node=@root, parent_node=nil, mark=nil)
    return nil if node == nil
    
    if value == node.value
      deleted_node = node

      if node.left.nil? && node.right.nil?
        if parent_node == nil
          @root = nil
        else
          parent_node.send("#{mark}=", nil)
        end
      elsif node.left.nil? || node.right.nil?
        if parent_node == nil
          @root = node.left || node.right
        else
          parent_node.send("#{mark}=", node.left || node.right)
        end
      else
        if parent_node == nil
          deleted_node = @root.dup
          @root.value = min_value(node.right).value
          delete(@root.value, @root.right, @root, "right")
        else
          parent_node.send(mark).value = min_value(node.right).value
          delete(parent_node.send(mark).value, node.right, node.right, "right")
        end
      end
    elsif value < node.value
      deleted_node = delete(value, node.left, node, "left")
    elsif value > node.value
      deleted_node = delete(value, node.right, node, "right")
    end

    deleted_node
  end

  def min_value(node)
    return node if node.left == nil
    return min_value(node.left)
  end
end
