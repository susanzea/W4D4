require "towers.rb"
require "rspec"

RSpec.describe Towers do
    subject(:towers) { Towers.new(5) }

    describe "#move" do

        it "to raises error if select from pile is empty" do
        expect{ towers.move(1, 2) }.to raise_error("array is empty!") 
        end

        it "subtracts disc properly" do
            num_of_discs = towers.towers_arr[0]
            towers.move(0, 1)
            expect(towers.towers_arr[0]).to eq(num_of_discs-1)
        end

        it "adds disc properly" do
            num_of_discs = towers.towers_arr[1]
            towers.move(0, 1)
            expect(towers.towers_arr[1]).to eq(num_of_discs+1)
        end
    end

    describe "#won?" do 
        it  "checks if all discs in last stack" do
            towers.towers_arr[-1] = 5
            expect(towers.towers_arr[2]).to eq(towers.total_discs)
        end
    end
end
