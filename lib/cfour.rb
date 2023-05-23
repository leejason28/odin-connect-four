class Grid 

  attr_accessor :grid

  def initialize
    @grid = Array.new(6) { Array.new(7) }
  end

  def place(player, column) #pieces "fall down" so need to go to max row (for loop from -1..0 ???)

  end

  def valid_move?(column) #not valid if all rows for this column are occupied
    if column<0 || column>6
      return false
    else
      if grid[0][column]
        return false
      end
      return true
    end
  end

  def game_over?                              # make sure to check that square actually has a checker on it (not nil)
    if self.check_rows==true
      return true
    elsif self.check_columns==true
      return true
    elsif self.check_diagonals==true
      return true
    else
      return false
    end
  end

  def check_rows
    for row in 0...@grid.length
      for col in 0...@grid[0].length-3
        if @grid[row][col]==@grid[row][col+1] && @grid[row][col]==@grid[row][col+2] && @grid[row][col]==@grid[row][col+3] && @grid[row][col]==@grid[row][col+4] #lmao
          return true
        end
      end
    end
    return false
  end

  def check_columns
    for row in 0...@grid.length-3
      for col in 0...@grid[0].length
        if @grid[row][col]==@grid[row+1][col] && @grid[row][col]==@grid[row+2][col] && @grid[row][col]==@grid[row+3][col] && @grid[row][col]==@grid[row+4][col] #lmao
          return true
        end
      end
    end
    return false
  end

  def check_diagonals

  end

end

class Player
  #player with first move is yellow

    attr_accessor :id

    def initialize
      @id
    end

end