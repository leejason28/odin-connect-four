require './lib/cfour'

describe Grid do

  describe "grid size" do
    it "should be a 6 row, 7 column grid" do
      g = Grid.new
      expect(g.grid.length).to eql(6)
      expect(g.grid[0].length).to eql(7)
    end
  end

  describe "valid moves" do
    it "valid moves are between columns 0 and 6" do
      g = Grid.new
      expect(g.valid_move?(-1)).to eql(false)
      expect(g.valid_move?(7)).to eql(false)
      expect(g.valid_move?(4)).to eql(true)
    end
    it "you cannot place checkers on completely full column" do
      g = Grid.new
      for i in 0...g.grid.length
        g.grid[i][0] = 'R'
      end
      expect(g.valid_move?(0)).to eql(false)
      expect(g.valid_move?(1)).to eql(true)
    end
  end

  describe "game over" do
    it "check vertical" do
      g = Grid.new
      expect(g.game_over?).to eql(false)
      for i in 0...4
        g.grid[i][0] = 'R'
      end
      expect(g.game_over?).to eql(true)
    end
    it "check horizontal" do
      g = Grid.new
      for i in 0...4
        g.grid[0][i] = 'R'
      end
      expect(g.game_over?).to eql(true)
    end
    it "check diagonal" do
      g = Grid.new
      for i in 0...4
        g.grid[i][i] = 'R'
      end
      expect(g.game_over?).to eql(true)
    end
  end

end