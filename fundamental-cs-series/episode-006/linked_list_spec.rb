require 'rspec'
require_relative 'linked_list'

describe 'LinkedList' do
  describe '#head' do
    it 'should return nil when first initialized' do
      linked_list = LinkedList.new
      expect(linked_list.head).to eq(nil)
    end
  end

  describe '#read' do
    it 'should return nil when reading head of newly initialized linked list' do
      linked_list = LinkedList.new
      expect(linked_list.read(0)).to eq(nil)
    end
  end

  describe '#append' do
    it 'should add data to the head of an empty linked list' do
      linked_list = LinkedList.new
      linked_list.append("a")
      expect(linked_list.read(0)).to eq("a")
    end
  end
end
