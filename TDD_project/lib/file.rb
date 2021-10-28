
class Array

    def my_uniq
        unique_arr = []
        hash = Hash.new
        self.each { |ele| hash[ele] = true }
        hash.each { |key, val| unique_arr << key }
        unique_arr
    end

    def two_sum
        pairs = []
        self.each_with_index do |ele_1, i|
            self.each_with_index do |ele_2, j|
                if j > i && (ele_1 + ele_2 == 0) 
                    pairs << [i, j]
                end
            end
        end

        pairs
    end

    def my_transpose
        transposed_arr = Array.new(self.length) {Array.new}
        self.each_with_index do |row, i|
            self.each_with_index do |ele, j|
                transposed_arr[i] << self[j][i]
            end
        end

        transposed_arr
    end

    def stock_picker
        biggest_profit = 0
        biggest_pair = []
        self.each_with_index do |ele_1, i|
            self.each_with_index do |ele_2, j|
                if j > i 
                    profit = ele_2 - ele_1
                    if profit > biggest_profit
                        biggest_profit = profit 
                        biggest_pair = [i, j]
                    end 
                end
            end
        end

        biggest_pair
    end




end