require 'spec_helper'

describe SingleLinkedList::SentinelNode do
  let(:node) { SingleLinkedList::SentinelNode.new }
  let(:data) { node.data }
  let(:pointer) { node.pointer }
    
  it 'does not contain data' do
    expect(data).to be_nil
  end
  
  it 'does not contain a pointer' do
    expect(pointer).to be_nil
  end
end

