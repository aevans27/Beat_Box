require './lib/beat_box'
require './lib/linked_list'
require './lib/node'

RSpec.describe BeatBox do
    #Verify it inits
    describe "#beatbox init" do
        it "exists" do
            bb = BeatBox.new
            expect(bb).to be_an_instance_of(BeatBox)
        end
    end

    #Checking the head
    describe "#beatbox add to list" do
        it "add beats" do
            bb = BeatBox.new
            expect(bb.list.head).to eq(nil)
            bb.append("deep doo ditt")
            expect(bb.list.head.data).to eq("deep")
            bb.append("woo hoo shu")
            expect(bb.count).to eq(6)
        end
    end
end