require 'rspec'
require_relative 'node'

describe 'Node' do
  describe '#data' do
    it "should return 'a' when initialized with 'a'" do
      node = Node.new('a')
      expect(node.data).to eq('a')
    end
  end

  describe '#next' do
    it 'should return nil when first initialized' do
      node = Node.new('a')
      expect(node.next).to eq(nil)
    end
  end
end
