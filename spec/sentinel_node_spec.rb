require "spec_helper"

describe SingleLinkedList::SentinelNode do
  let(:node) { SingleLinkedList::SentinelNode.new }
  
  describe "#data" do
    it "should return nil" do
      expect(node.data).to be_nil
    end
  end
  
  describe "#pointer" do
    it "should return nil" do
      expect(node.pointer).to be_nil
    end
  end
end

