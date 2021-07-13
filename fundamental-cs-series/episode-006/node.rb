class Node
  attr_reader :data, :next

  def initialize(data)
    @data = data
    @next = nil
  end
end
