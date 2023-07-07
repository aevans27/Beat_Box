require './lib/linked_list'
require './lib/node'

RSpec.describe LinkedList do
    #Verify it inits
    describe "#linkedlist init" do
        it "exists" do
            list = LinkedList.new
            expect(list).to be_an_instance_of(LinkedList)
        end
    end

    describe "#Add node" do
    #Check it adds node
        it "add doop to list" do
            list = LinkedList.new
            list.append("doop")
            expect(list.head.data).to eq("doop")
        end
    end

    describe "#Add nodes" do
    #Check it adds multiple nodes
        it "get count and doop string" do
            list = LinkedList.new
            list.append("doop")
            expect(list.count).to eq(1)
            expect(list.to_string).to eq("doop")
            
            list.append("deep")
            expect(list.count).to eq(2)
            expect(list.to_string).to eq("doop deep")

            list.append("boop")
            expect(list.count).to eq(3)
            expect(list.to_string).to eq("doop deep boop")
        end
    end

    it "add to begining of linked list" do
        list = LinkedList.new
        list.append("doop")
        expect(list.count).to eq(1)
        expect(list.to_string).to eq("doop")
        
        list.append("deep")
        expect(list.count).to eq(2)
        expect(list.to_string).to eq("doop deep")

        list.append("boop")
        expect(list.count).to eq(3)
        expect(list.to_string).to eq("doop deep boop")

        list.prepend("dop")
        expect(list.count).to eq(4)
        expect(list.to_string).to eq("dop doop deep boop")
        
    end
end