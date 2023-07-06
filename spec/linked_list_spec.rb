require './lib/linked_list'
require './lib/node'

RSpec.describe LinkedList do
    it "exists" do
        list = LinkedList.new
        expect(list).to be_an_instance_of(LinkedList)
    end

    it "add doop to list" do
        list = LinkedList.new
        list.append("doop")
        expect(list.head.data).to eq("doop")
    end

    it "get count and doop string" do
        list = LinkedList.new
        list.append("doop")
        expect(list.count).to eq(1)
        expect(list.to_string).to eq("doop")
    end
end