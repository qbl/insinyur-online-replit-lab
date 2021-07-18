class Node
  attr_reader :value, :left, :right

  def initialize(value)
    @value = value
    @left = nil
    @right = nil
  end
end
