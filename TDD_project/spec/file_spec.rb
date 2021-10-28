require "file.rb"
require "rspec"

RSpec.describe Array do
    subject(:array) { [1,2,3,1,2,3] }
    let(:unique_arr) { [1,2,3] }

    it "removes duplicates" do 
        un_arr = :array.my_uniq
        expect(:unique_arr).to eq(un_arr)
    end

end