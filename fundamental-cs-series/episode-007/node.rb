class Node
  attr_accessor :left
  attr_reader :value, :right

  def initialize(value)
    @value = value
    @left = nil
    @right = nil
  end
end
