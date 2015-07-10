require 'spec_helper'

module Gameoflife
  describe "Board : " do
    context "creation of next generation" do
      it "should create next generation" do
        nex_gen = [[0, 0, 0], [0, 0, 0], [0, 0, 0]]
        board = Board.new
        expect(board.next_gen).to eq(nex_gen)
      end

      it "should be based on seed values" do
        seed = [[0, 1], [1,2], [2,0]]
        nex_gen = [[0, 1, 0], [0, 1, 1], [1, 0, 0]]
        board = Board.new(seed)
        expect(board.next_gen).to eq(nex_gen)
      end
    end
  end
end
