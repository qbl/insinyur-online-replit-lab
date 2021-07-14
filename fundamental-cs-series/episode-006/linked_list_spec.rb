require 'rspec'
require_relative 'linked_list'

describe 'LinkedList' do
  describe '#head' do
    it 'should return nil when first initialized' do
      linked_list = LinkedList.new
      expect(linked_list.head).to eq(nil)
    end
  end
end
