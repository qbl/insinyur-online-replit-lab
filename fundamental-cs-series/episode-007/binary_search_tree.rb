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
      if value < @root.value
        @root.left = Node.new(value)
      else
        @root.right = Node.new(value)
      end
    end
  end
end
