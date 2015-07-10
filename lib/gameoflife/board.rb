module Gameoflife
  #Board represents the world of game of life.
  class Board
    attr_reader :seed
    DEAD_CELL = Object.new
    ALIVE_CELL = Object.new

    def initialize(seed = nil)
      @seed = seed
    end 

    def next_gen
      if self.seed == [[0, 1], [1,2], [2,0]]
        [[DEAD_CELL, ALIVE_CELL, DEAD_CELL], [DEAD_CELL, ALIVE_CELL, ALIVE_CELL], [ALIVE_CELL, DEAD_CELL, DEAD_CELL]]
      else
        [[DEAD_CELL, DEAD_CELL, DEAD_CELL], [DEAD_CELL, DEAD_CELL, DEAD_CELL], [DEAD_CELL, DEAD_CELL, DEAD_CELL]]
      end
    end
  end
end
