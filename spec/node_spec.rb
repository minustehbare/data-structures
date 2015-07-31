require "spec_helper"

describe SingleLinkedList::Node do
  let(:node) { SingleLinkedList::Node.new }
  
  describe "#data" do
    it "returns a value" do
      expect(node.data).not_to be_nil
    end
  end
  
  describe "#pointer" do
    it "returns a value" do
      expect(node.pointer).not_to be_nil
    end
  end
end

