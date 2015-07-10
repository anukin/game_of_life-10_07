require 'spec_helper'

module Gameoflife
  describe "Board : " do
    context "creation of next generation" do
      it "should create next generation" do
        nex_gen = [[Board::DEAD_CELL, Board::DEAD_CELL, Board::DEAD_CELL], [Board::DEAD_CELL, Board::DEAD_CELL, Board::DEAD_CELL], [Board::DEAD_CELL, Board::DEAD_CELL, Board::DEAD_CELL]]
        board = Board.new
        expect(board.next_gen).to eq(nex_gen)
      end

      it "should be based on seed of live cells through its coordinates" do
        seed = [[0, 1], [1,2], [2,0]]
        nex_gen = [[Board::DEAD_CELL, Board::ALIVE_CELL, Board::DEAD_CELL], [Board::DEAD_CELL, Board::ALIVE_CELL, Board::ALIVE_CELL], [Board::ALIVE_CELL, Board::DEAD_CELL, Board::DEAD_CELL]]
        board = Board.new(seed)
        expect(board.next_gen).to eq(nex_gen)
      end
    end
  end
end
