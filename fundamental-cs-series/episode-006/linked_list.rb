require_relative 'node'

class LinkedList
  attr_reader :head
  
  def initialize
    @head = nil
  end

  def read(index)
    if @head == nil
      nil
    else
      @head.data
    end
  end

  def append(data)
    @head = Node.new(data)
  end
end
