require 'rspec'
require_relative 'node'

describe 'Node' do
  describe '#value' do
    it 'should return 2 when node is initiated with 2' do
      node = Node.new(2)
      expect(node.value).to eq(2)
    end
  end
end
