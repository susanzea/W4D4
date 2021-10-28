require "file.rb"
require "rspec"

RSpec.describe Array do
    subject(:array) { [1,2,3,1,2,3] }
    let(:unique_arr) { [1,2,3] }

    describe "#my_uniq" do
        it "removes duplicates" do 
            un_arr = array.my_uniq
            expect(unique_arr).to eq(un_arr)
        end

        it "returns new array" do
            un_arr = array.my_uniq
            expect(un_arr).to_not eq(array)
        end

        it "is called on object of Array class" do 
            expect(array.is_a?(Array)).to eq(true)
        end

        it "should not mutate self" do
            un_arr = array.my_uniq
            expect(un_arr.object_id).to_not be(array.object_id) 
        end
    end

    describe "#two_sum" do
        subject(:array) { [-1, 0, 2, -2, 1] }

        it "finds all pairs that equal to zero" do
            sum = array.two_sum
            expect(sum).to eq([[0, 4], [2, 3]])
        end

        it "should not mutate self" do
            sum_arr = array.two_sum
            expect(sum_arr.object_id).to_not be(array.object_id) 
        end
    end

    describe "#my_transpose" do
        subject(:rows) { [
                [0, 1, 2],
                [3, 4, 5],
                [6, 7, 8]
            ] }
        subject(:transposed_rows) { [
                [0, 3, 6],
                [1, 4, 7],
                [2, 5, 8]
            ] }

        it "transposes our array" do
            transposed_arr = rows.my_transpose 
            expect(transposed_arr).to eq(transposed_rows)
        end

    end

    describe "#stock_picker" do
        subject(:stocks) { [13, 67, 100, 22, 90, 17] }
    
        it "returns most profitable pair" do
            best_days = stocks.stock_picker
            expect(best_days).to eq([0, 2])
        end

        it "only sells after buying" do 
            arr = [20, 100, 5, 90]
            expect(arr.stock_picker).to eq([2, 3])
        end

    end





end