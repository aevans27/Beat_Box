require './lib/node'

RSpec.describe Node do
    it "exists" do
        node = Node.new("plop")
        expect(node).to be_an_instance_of(Node)
    end

    it "data contains plop" do
        node = Node.new("plop")
        expect(node.data).to eq("plop")
    end

    it "next_node is nil" do
        node = Node.new("plop")
        expect(node.next_node).to eq(nil)
    end
end