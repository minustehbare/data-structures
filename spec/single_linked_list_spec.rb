require "spec_helper"

describe SingleLinkedList do
  let(:list) { SingleLinkedList.new }
  
  describe "#head" do
    it "returns the head of the list" do
      expect(list.head).not_to be_nil
    end
    
    it "returns a SingleLinkedList::Node" do
      expect(list.head).to be_an_instance_of(SingleLinkedList::Node)
    end
  end
  
  describe "#tail" do
    it "returns the tail of the list" do
      expect(list.tail).not_to be_nil
    end
    
    it "returns a SingleLinkedList::Node" do
      expect(list.tail).to be_an_instance_of(SingleLinkedList::Node)
    end
  end
  
  context "when adding a node to the list" do
    let(:new_node) { SingleLinkedList::Node.new }
    describe "#append" do
      it "adds a node to the end of the list" do
        list.append(new_node)
      end
    end

    describe "#prepend" do
      it "adds a node to the beginning of the list" do
        list.prepend(new_node)
      end
    end
  end
end

