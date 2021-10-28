require_relative "card.rb"
class Deck
    attr_reader :stack_of_cards
    def initialize
        @stack_of_cards = Hash.new{ |h,k| h[k] = 0}
        populate_deck
    end

    def populate_deck
        add_aces
        add_kings
        add_queens
        add_queens
        add_jacks
        add_10s
        add_9s
        add_8s
        add_7s
        add_6s
        add_5s
        add_4s
        add_3s
        add_2s
    end 
    def add_aces
        black_ace = Card.new(1,:black,:A)
        red_ace = Card.new(1,:red,:A)
        @stack_of_cards[black_ace] = 2
        @stack_of_cards[red_ace] = 2
    end

    def add_kings
        black_kings = Card.new(10,:black,:K)
        red_kings = Card.new(10,:red,:K)
        @stack_of_cards[black_kings] = 2
        @stack_of_cards[red_kings] = 2
    end
    
    def add_queens
        black_queens = Card.new(10,:black,:Q)
        red_queens = Card.new(10,:red,:Q)
        @stack_of_cards[black_queens] = 2
        @stack_of_cards[red_queens] = 2
    end

     def add_jacks
        black_jacks = Card.new(10,:black,:J)
        red_jacks = Card.new(10,:red,:J)
        @stack_of_cards[black_jacks] = 2
        @stack_of_cards[red_jacks] = 2
    end

     def add_10s
        black_10s= Card.new(10,:black,"10")
        red_10s = Card.new(10,:red,"10")
        @stack_of_cards[black_10s] = 2
        @stack_of_cards[red_10s] = 2
    end

    def add_9s
        black_9s= Card.new(9,:black,"9")
        red_9s = Card.new(9,:red,"9")
        @stack_of_cards[black_9s] = 2
        @stack_of_cards[red_9s] = 2
    end

    def add_8s
        black_8s= Card.new(8,:black,"8")
        red_8s = Card.new(8,:red,"8")
        @stack_of_cards[black_8s] = 2
        @stack_of_cards[red_8s] = 2
    end

    def add_7s
        black_7s= Card.new(7,:black,"7")
        red_7s = Card.new(7,:red,"7")
        @stack_of_cards[black_7s] = 2
        @stack_of_cards[red_7s] = 2
    end

    def add_6s
        black_6s= Card.new(6,:black,"6")
        red_6s = Card.new(6,:red,"6")
        @stack_of_cards[black_6s] = 2
        @stack_of_cards[red_6s] = 2
    end

    def add_5s
        black_5s= Card.new(5,:black,"5")
        red_5s = Card.new(5,:red,"5")
        @stack_of_cards[black_5s] = 2
        @stack_of_cards[red_5s] = 2
    end

    def add_4s
        black_4s= Card.new(4,:black,"4")
        red_4s = Card.new(4,:red,"3")
        @stack_of_cards[black_4s] = 2
        @stack_of_cards[red_4s] = 2
    end

    def add_3s
        black_3s= Card.new(3,:black,"3")
        red_3s = Card.new(3,:red,"3")
        @stack_of_cards[black_3s] = 2
        @stack_of_cards[red_3s] = 2
    end

    def add_2s
        black_2s= Card.new(2,:black,"2")
        red_2s = Card.new(2,:red,"2")
        @stack_of_cards[black_2s] = 2
        @stack_of_cards[red_2s] = 2
    end

    def shuffle!
        @stack_of_cards.shuffle!
    end 

    def deal_card
        card = @stack_of_cards.keys.sample
        until card.value > 0 
            card = @stack_of_cards.keys.sample
        end 
        @stack_of_cards[card] -= 1 
        card
    end

end

class Hash
 def shuffle
    Hash[self.to_a.sample(self.length)]
  end

  def shuffle!
    self.replace(self.shuffle)
  end 
end

deck = Deck.new
# deck.add_aces
# deck.add_kings
# deck.add_queens
# deck.ad
deck.shuffle!
p deck
puts 
p card =  deck.deal_card 
p deck.stack_of_cards[card]
puts 
puts 

p deck
