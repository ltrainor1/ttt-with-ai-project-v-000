class Computer < Players

  def move(board)

    index = 1 + rand(9)
    index.to_s

    if board.cells.all? {|cell| cell == " "}
      index = 5
    end

  end
end
