class Computer < Players

  def move(board)

    WIN_COMBINATIONS = [[0,1,2],[3,4,5],[6,7,8],[0,3,6],[1,4,7],[2,5,8],[0,4,8],[2,4,6]]

    index = 1 + rand(9)
    index.to_s
    
    if board.cells.all? {|cell| cell == " "}
      index = 5 
    end 

  end
end
