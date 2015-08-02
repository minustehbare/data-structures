require "spec_helper"

describe SingleLinkedList do
  let(:list) { SingleLinkedList.new }
  let(:head) { list.head }
  let(:tail) { list.tail }
  
  shared_examples "a list node" do
    before { list.prepend(SingleLinkedList::Node.new) }
    subject { head }
    it { is_expected.not_to be_nil }
    it { is_expected.to be_an_instance_of(SingleLinkedList::Node) }
  end
  
  context "when the list is empty" do
    describe "the node" do
      subject { head }
      it { is_expected.to be_nil }
    end
    
    describe "the tail node" do
      subject { tail }
      it { is_expected.to be_nil }
    end
  end
  
  context "when the list is not empty" do
    before { list.prepend(SingleLinkedList::Node.new) }
    
    describe "the head node" do
      it_behaves_like "a list node"
    end
    
    describe "the tail node" do
      it_behaves_like "a list node"
    end
    
    describe "the tail node's pointer" do
      subject { tail.pointer }
      it { is_expected.to be_nil }
    end
  end
  
  context "when the list has exactly one node" do
    before { list.prepend(SingleLinkedList::Node.new) }
    
    describe "the head node's pointer" do
      subject { head.pointer }
      it { is_expected.to be_nil }
    end
    
    describe "the tail node" do
      it "is the same as the head" do
        expect(tail).to equal(head)
      end
    end
  end
  
  context "when the list has two nodes" do
    before { 2.times { list.prepend(SingleLinkedList::Node.new) } }
    
    describe "the head node's pointer" do
      subject(:pointer) { head.pointer }
      it { is_expected.not_to be_nil }
      it "points to the tail" do
        expect(pointer).to equal(tail)
      end
    end
    
    describe "the tail node" do
      it "is not the same as the head" do
        expect(tail).not_to equal(head)
      end
    end
  end
  
  context "when the list has three or more nodes" do
    before { 10.times { list.prepend(SingleLinkedList::Node.new) } }
    
    describe "the head node's pointer" do
      it "does not point to the tail" do
        expect(head.pointer).not_to equal(tail)
      end
    end
  end
  
  context "when adding a node to the list" do
    let(:new_node) { SingleLinkedList::Node.new }
    describe "using #append" do
      before { list.append(new_node) }
      
      it "adds a node to the end of the list" do
        expect(new_node.pointer).to be_nil
        expect(new_node).to equal(tail)
      end
    end

    describe "using #prepend" do
      before { list.prepend(new_node) }
      it "adds a node to the beginning of the list" do
        expect(new_node).to equal(head)
      end
    end
    
    describe "using #insert_after" do
      it "adds the node after the specified node" do
      end
    end
  end
  
  context "when removing a node from the list" do
    describe "using #remove_after" do
      it "remove the node after the specified node" do
      end
    end
  end
  
  context "when finding a node" do
    before {
      10.times { |x| list.append(SingleLinkedList::Node.new(x + 1)) }
      list.append(SingleLinkedList::Node.new(1))
      list.prepend(SingleLinkedList::Node.new(10))
    }
    
    describe "using #find_by_data" do
      it "returns the first node found that contains the specified data" do
        expect(list.find_by_data(10)).to equal(head)
        expect(list.find_by_data(1)).not_to equal(tail)
      end
      
      it "returns nil if no node contains the specified data" do
        expect(list.find_by_data(20)).to be_nil
      end
    end
    
    describe "using #find_by_index" do
      context "when index is out of range" do
        it "returns nil" do
          expect(list.find_by_index(-10)).to be_nil
          expect(list.find_by_index(1000)).to be_nil
        end
      end
      
      context "when index is in range" do
        it "retrieves the n-th node in the list" do
          expect(list.find_by_index(1)).not_to be_nil
          expect(list.find_by_index(9)).not_to be_nil
        end
      end
    end
  end
end

