require 'spec_helper'

describe SingleLinkedList::Node do
  let(:node) { SingleLinkedList::Node.new }
  let(:data) { node.data }
  let(:pointer) { node.pointer }
    
  it 'contains data' do
    expect(data).not_to be_nil
  end
  
  it 'contains a pointer' do
    expect(pointer).not_to be_nil
  end
end

