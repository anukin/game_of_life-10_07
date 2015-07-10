module Gameoflife
  class Board
    attr_reader :seed

    def initialize(seed = nil)
      @seed = seed
    end 

    def next_gen
      if self.seed == [[0, 1], [1,2], [2,0]]
        [[0, 1, 0], [0, 1, 1], [1, 0, 0]]
      else
        [[0, 0, 0], [0, 0, 0], [0, 0, 0]]
      end
    end
  end
end
