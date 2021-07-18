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
      @root.left = Node.new(value)
    end
  end
end
