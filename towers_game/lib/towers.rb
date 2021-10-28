

class Towers 

    attr_reader :towers_arr, :total_discs

    def initialize(total_discs)
        @total_discs = total_discs
        @towers_arr = [total_discs, 0, 0]
    end

    def move(i, j)
        raise "array is empty!" if @towers_arr[i] == 0
        @towers_arr[i] -= 1
        @towers_arr[j] += 1
    end

    def won?
        return true if @total_discs == @towers_arr.last
        false
    end
end