class Computer < Players

  def move(board)

      index = 5
  
    good_combo = wins.detect do |combo|
      combo = combo.each {|space| space += 1}
      a = board.taken(combo(1)) && board.taken(combo(2)) 
      b = board.taken(combo(1)) && board.taken(combo(3)) 
      c = board.taken(combo(2)) && board.taken(combo(3))
      a || b || c 
      if a 
        index = combo[3]
      elsif b 
        index = combo[2]
      else 
        index = combo[1]
      end 
    end 

    index = 1 + rand(9)
    index.to_s
end 
    
    
    

