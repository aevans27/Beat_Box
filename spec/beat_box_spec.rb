require './lib/beat_box'
require './lib/linked_list'
require './lib/node'

RSpec.describe BeatBox do
    describe "#beatbox init" do
        it "exists" do
            bb = BeatBox.new
            expect(bb).to be_an_instance_of(BeatBox)
        end
    end

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

    describe "#beatbox music" do
        it "play beats" do
            bb = BeatBox.new
            expect(bb.list.head).to eq(nil)
            bb.append("deep doo ditt")
            expect(bb.list.head.data).to eq("deep")
            bb.append("woo hoo shu")
            expect(bb.count).to eq(6)
            #Listen for music
            bb.play
        end
    end

    describe "#beatbox music again" do
        it "play beats with weird characters" do
            bb = BeatBox.new
            expect(bb.list.head).to eq(nil)
            bb.append("[5] 4 3")
            expect(bb.list.head.data).to eq("5")
            bb.append("2 1 0")
            expect(bb.count).to eq(6)

            bb.play
        end
    end

    describe "#beatbox init and skips" do
        it "init with beat" do
            bb = BeatBox.new("deep")
            expect(bb).to be_an_instance_of(BeatBox)
            bb.append("Mississippi")
            bb.append("Bobby")
            bb.append("Mike")
            bb.append("Tim")
            expect(bb.all).to eq("deep")
            bb.prepend("tee dop dep Mississippi")
            expect(bb.all).to eq("tee dop dep deep")
        end
    end

    describe "#beatbox voice and speed setting change" do
        it "voice and speed" do
            bb = BeatBox.new("deep dop dop deep")
            expect(bb).to be_an_instance_of(BeatBox)
            expect(bb.all).to eq("deep dop dop deep")
            bb.play

            bb.rate = 1000
            expect(bb.rate).to eq(1000)
            bb.play

            bb.rate = 100
            expect(bb.rate).to eq(100)
            bb.play

            bb.rate = 1200
            bb.play
            expect(bb.rate).to eq(500)

            bb.voice = "Daniel"
            expect(bb.voice).to eq("Daniel")
            bb.play

            bb.voice = "Fred"
            expect(bb.voice).to eq("Fred")
            bb.play

            bb.reset_rate
            expect(bb.rate).to eq(500)
            bb.reset_voice
            expect(bb.voice).to eq("Boing")
            bb.play

            bb.voice = "Bubba"
            bb.play
            expect(bb.voice).to eq("Boing")

            bb.voice = "Jojojojo"
            bb.play
            expect(bb.voice).to eq("Boing")
        end
    end
end