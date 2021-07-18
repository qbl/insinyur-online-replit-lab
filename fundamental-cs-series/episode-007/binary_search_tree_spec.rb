require 'rspec'
require_relative 'binary_search_tree'

describe 'BinarySearchTree' do
  describe '#root' do
    it 'should return nil when first initialized' do
      bst = BinarySearchTree.new
      expect(bst.root).to eq(nil)
    end
  end

  describe '#insert' do
    it 'should add new value as root node when inserting to an empty bst' do
      bst = BinarySearchTree.new
      bst.insert(2)
      expect(bst.root.value).to eq(2)
    end

    it 'should add new value as left node when inserting a smaller value than root node' do
      bst = BinarySearchTree.new
      bst.insert(2)
      bst.insert(1)
      expect(bst.root.left.value).to eq(1)
    end

    it 'should add new value as a grandchild left node when inserting a smaller value than root node and left node' do
      bst = BinarySearchTree.new
      bst.insert(3)
      bst.insert(2)
      bst.insert(1)
      expect(bst.root.left.left.value).to eq(1)
    end

    it 'should add new value as right node when inserting a bigger value than root node' do
      bst = BinarySearchTree.new
      bst.insert(2)
      bst.insert(3)
      expect(bst.root.right.value).to eq(3)
    end
  end
end
