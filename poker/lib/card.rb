class Card
    attr_reader :value, :symbol, :color
    def initialize(value,color,symbol)
        @value = value
        @color = color
        @symbol = symbol
        
    end

    def <=>(card)
        self.value <=> card.value
    end 
end