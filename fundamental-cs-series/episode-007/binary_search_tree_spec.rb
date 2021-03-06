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

    it 'should add new value as a grandchild right node when inserting a bigger value than root node and right node' do
      bst = BinarySearchTree.new
      bst.insert(1)
      bst.insert(2)
      bst.insert(3)
      expect(bst.root.right.right.value).to eq(3)
    end
  end

  describe '#search' do
    it 'should return false when searching for value in an empty tree' do
      bst = BinarySearchTree.new
      expect(bst.search(1)).to eq(false)
    end

    it 'should return true when searching for 1 in a tree with 1 as root' do
      bst = BinarySearchTree.new
      bst.insert(1)
      expect(bst.search(1)).to eq(true)
    end

    it 'should return false when searching for 1 in a tree with 2 as root' do
      bst = BinarySearchTree.new
      bst.insert(2)
      expect(bst.search(1)).to eq(false)
    end

    it 'should return true when searching for 1 in a tree with 2 as root and 1 as left node' do
      bst = BinarySearchTree.new
      bst.insert(2)
      bst.insert(1)
      expect(bst.search(1)).to eq(true)
    end

    it 'should return true when searching for 2 in a tree with 1 as root and 2 as right node' do
      bst = BinarySearchTree.new
      bst.insert(1)
      bst.insert(2)
      expect(bst.search(2)).to eq(true)
    end
  end

  describe '#delete' do
    it 'should return nil when deleting any value from an empty tree' do
      bst = BinarySearchTree.new
      expect(bst.delete(1)).to eq(nil)
    end

    context 'when deleting root node' do
      context 'with no grandchild node' do
        it 'should return root node when deleting root node' do
          bst = BinarySearchTree.new
          bst.insert(1)
          deleted_node = bst.delete(1)
          expect(deleted_node.value).to eq(1)
        end
  
        it 'should ensure root node is nil when it is deleted' do
          bst = BinarySearchTree.new
          bst.insert(1)
          bst.delete(1)
          expect(bst.root).to eq(nil)
        end
      end

      context 'with one child node only' do
        it 'should turn child node into the new root node' do
          bst = BinarySearchTree.new
          bst.insert(2)
          bst.insert(1)
          bst.delete(2)
          expect(bst.root.value).to eq(1)
        end
      end

      context 'with two children nodes' do
        it 'should return root node' do
          bst = BinarySearchTree.new
          bst.insert(2)
          bst.insert(1)
          bst.insert(4)
          bst.insert(3)
          bst.insert(5)
          deleted_node = bst.delete(2)
          expect(deleted_node.value).to eq(2)
        end
      end
    end

    context 'when deleting child node' do
      context 'with no grandchild node' do
        it 'should return left child node when deleting left child node' do
          bst = BinarySearchTree.new
          bst.insert(2)
          bst.insert(1)
          deleted_node = bst.delete(1)
          expect(deleted_node.value).to eq(1)
        end

        it 'should ensure left child node is nil when it is deleted' do
          bst = BinarySearchTree.new
          bst.insert(2)
          bst.insert(1)
          bst.delete(1)
          expect(bst.root.left).to eq(nil)
        end

        it 'should return right child node when deleting right child node' do
          bst = BinarySearchTree.new
          bst.insert(1)
          bst.insert(2)
          deleted_node = bst.delete(2)
          expect(deleted_node.value).to eq(2)
        end

        it 'should ensure right child node is nil when it is deleted' do
          bst = BinarySearchTree.new
          bst.insert(1)
          bst.insert(2)
          bst.delete(2)
          expect(bst.root.right).to eq(nil)
        end
      end

      context 'with one grandchild node' do
        it 'should turn left grandchild node into the new left child node' do
          bst = BinarySearchTree.new
          bst.insert(3)
          bst.insert(2)
          bst.insert(1)
          bst.delete(2)
          expect(bst.root.left.value).to eq(1)
        end

        it 'should turn right grandchild node into the new right child node' do
          bst = BinarySearchTree.new
          bst.insert(1)
          bst.insert(2)
          bst.insert(3)
          bst.delete(2)
          expect(bst.root.right.value).to eq(3)
        end

        it 'should turn right grandchild node into the new left child node' do
          bst = BinarySearchTree.new
          bst.insert(3)
          bst.insert(1)
          bst.insert(2)
          bst.delete(1)
          expect(bst.root.left.value).to eq(2)
        end
      end

      context 'with two grandchildren nodes' do
        it 'should turn left most node from its right subtree into the new left child node' do
          bst = BinarySearchTree.new
          bst.insert(4)
          bst.insert(2)
          bst.insert(5)
          bst.insert(1)
          bst.insert(3)
          bst.delete(2)
          expect(bst.root.left.value).to eq(3)
        end

        it 'should ensure left most child node from its right subree is removed from its previous position' do
          bst = BinarySearchTree.new
          bst.insert(4)
          bst.insert(2)
          bst.insert(5)
          bst.insert(1)
          bst.insert(3)
          bst.delete(2)
          expect(bst.root.left.right).to eq(nil)
        end
      end
    end

    it 'should pass the following complex tree example' do
      bst = BinarySearchTree.new
      bst.insert(8)
      bst.insert(4)
      bst.insert(12)
      bst.insert(2)
      bst.insert(6)
      bst.insert(10)
      bst.insert(14)
      bst.insert(1)
      bst.insert(3)
      bst.insert(5)
      bst.insert(7)
      bst.insert(9)
      bst.insert(11)
      bst.insert(13)
      bst.insert(15)
      deleted_node = bst.delete(8)
      expect(deleted_node.value).to eq(8)
      expect(bst.root.value).to eq(9)
      expect(bst.root.left.value).to eq(4)
      expect(bst.root.right.value).to eq(12)
      expect(bst.root.right.left.left).to eq(nil)
    end
  end
end
