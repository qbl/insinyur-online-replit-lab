require 'rspec'
require_relative 'node'

describe 'Node' do
  describe '#value' do
    it 'should return 2 when node is initialized with 2' do
      node = Node.new(2)
      expect(node.value).to eq(2)
    end
  end

  describe '#left' do
    it 'should return nil when first initialized' do
      node = Node.new(2)
      expect(node.left).to eq(nil)
    end
  end

  describe '#right' do
    it 'should return nil when first initialized' do
      node = Node.new(2)
      expect(node.right).to eq(nil)
    end
  end
end
