require './lib/linked_list'
require './lib/node'

RSpec.describe LinkedList do
    describe "#linkedlist init" do
        it "exists" do
            list = LinkedList.new
            expect(list).to be_an_instance_of(LinkedList)
        end
    end

    describe "#Add node" do
        it "add doop to list" do
            list = LinkedList.new
            list.append("doop")
            expect(list.head.data).to eq("doop")
            expect(list.head.next).to eq(nil)
        end
    end

    describe "#Add nodes" do
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
    describe "#Add nodes to beginning and inserting" do
        it "add to beginning and middle of linked list" do
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
            
            list.insert("woo", 1)
            expect(list.count).to eq(5)
            expect(list.to_string).to eq("dop woo doop deep boop")
            #Insert past range adds to end
            list.insert("woop", 6)
            expect(list.count).to eq(6)
            expect(list.to_string).to eq("dop woo doop deep boop woop")

            list.insert("dop", 20)
            expect(list.count).to eq(7)
            expect(list.to_string).to eq("dop woo doop deep boop woop dop")

        end
    end

    describe "#Checking nodes" do
        it "find, remove, includes? testing" do
            list = LinkedList.new
            expect(list.find(0, 20)).to eq("No beats added")
            expect(list.pop).to eq("Nothing to pop")
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
            
            list.insert("woo", 1)
            expect(list.count).to eq(5)
            expect(list.to_string).to eq("dop woo doop deep boop")

            list.insert("woop", 9)
            expect(list.count).to eq(6)
            expect(list.to_string).to eq("dop woo doop deep boop woop")

            expect(list.find(2, 1)).to eq("doop")
            expect(list.find(1, 3)).to eq("woo doop deep")
            expect(list.find(0, 3)).to eq("dop woo doop")
            expect(list.find(0, 20)).to eq("Outside of range")

            expect(list.includes?("deep")).to eq(true)
            expect(list.includes?("dep")).to eq(false)

            expect(list.pop).to eq("woop")
            expect(list.count).to eq(5)
            expect(list.to_string).to eq("dop woo doop deep boop")
            expect(list.pop).to eq("boop")
            expect(list.count).to eq(4)
            expect(list.to_string).to eq("dop woo doop deep")

        end
    end
end