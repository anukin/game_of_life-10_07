require 'spec_helper'

module Gameoflife
  describe "Board" do
    it "should create next generation" do
      nex_gen = [[0, 0, 0], [0, 0, 0], [0, 0, 0]]
      board = Board.new
      expect(board.next_gen).to eq(nex_gen)
    end
  end
end
