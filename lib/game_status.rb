# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS nested array constant

WIN_COMBINATIONS = [
  [0, 1, 2], # Top row
  [3, 4, 5], # Middle row
  [6, 7, 8], # Bottom row
  [0, 3, 6], # Left column
  [1, 4, 7], # Middle column
  [2, 5, 8], # Right column
  [0, 4, 8], # Forward-slash diagonal
  [2, 4, 6], # Backward-slash diagonal
  ]

def won?(board)
  
  WIN_COMBINATIONS.each do |wc|
  
    if ((board[wc[0]] == "X") && 
      (board[wc[1]] == "X") && 
      (board[wc[2]] == "X")) ||
      ((board[wc[0]] == "O") && 
      (board[wc[1]] == "O") && 
      (board[wc[2]] == "O"))
        return wc
    end
  end
end  
     
    # win_index_1 = win_combination[0]
    # win_index_2 = win_combination[1]
    # win_index_3 = win_combination[2]
     
    # position_1 = board[win_index_1]
    # position_2 = board[win_index_2]
    # position_3 = board[win_index_3]
     
    # return win_combination[1]
     
    # if ((position_1 == "X") &&
    #   (position_2 == "X") &&
    #   (position_3 == "X")) ||
    #   ((position_1 == "O") &&
    #   (position_2 == "O") &&
    #   (position_3 == "O"))
    #   return counter + 6
    #   else
    #     return false
  #   # end
  # end
  # end
#end


