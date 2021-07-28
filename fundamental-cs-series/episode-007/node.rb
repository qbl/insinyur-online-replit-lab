class Node
  attr_accessor :value, :left, :right
  attr_reader 

  def initialize(value)
    @value = value
    @left = nil
    @right = nil
  end
end
