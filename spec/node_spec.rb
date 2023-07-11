require './lib/node'

RSpec.describe Node do
    it "does node exists" do
        node = Node.new("plop")
        expect(node).to be_an_instance_of(Node)
    end

    it "data contains plop" do
        node = Node.new("plop")
        expect(node.data).to eq("plop")
    end

    it "next_node is nil" do
        node = Node.new("plop")
        expect(node.next).to eq(nil)
    end
end