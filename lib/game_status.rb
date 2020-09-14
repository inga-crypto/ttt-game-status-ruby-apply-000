# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS = [
  [0, 1, 2],
  [3, 4, 5],
  [6, 7, 8],
  [0, 3, 6],
  [1, 4, 7],
  [2, 5, 8],
  [0, 4, 8],
  [2, 4, 6]
   ]
   
     def won?(board)
       
     WIN_COMBINATIONS.detect do |combo|
      
        board[combo[0]] == board[combo[1]] && board[combo[1]] == board[combo[2]] && position_taken?(board, combo[0])
        end
      end
      
      def won?(board)
        win_index_1 = win_combination[0]
        win_index_2 = win_combination[1]
        win_index_3 = win_combination[2]
        win_index_4 = win_combination[3]
        win_index_5 = win_combination[4]
        win_index_6 = win_combination[5]
        win_index_7 = win_combination[6]
        win_index_8 = win_combination[7]
        
          position_1 = board[win_index_1]
          position_2 = board[win_index_2]
          position_3 = board[win_index_3]
          position_4 = board[win_index_4]
          position_5 = board[win_index_5]
          position_6 = board[win_index_6]
          position_7 = board[win_index_7]
          position_8 = board[win_index_8]
          
      if position_1 == "X" && position_2 == "X" && position_3 == "X"
        return win_combination
      
      end
   
   def full?(board)
     if board.include?(" ")
     return false
     elsif board.include?("")
     return false
   else
     return true
    end
   end
   
   def draw?(board)
     if board.include?(" ") || board.include?("")
       return false
     elsif won?(board)
       return false
     else
       return true
    end
   end
   
   def over?(board)
     if won?(board) || draw?(board) || full?(board)
       return true
       else
       return false
     end
   end
   
   def winner(board)
    won?(board).include?("X")
    return "X"
 
    end