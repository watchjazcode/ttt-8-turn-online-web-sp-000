def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def input_to_index(user_input)
  user_input.to_i - 1
end

def move(board_array, index, character)
  board_array[index] = character
end

def position_taken?(board, index)
  if board[index] == "" || board[index] == " " || board[index] == nil
    return false
  else 
    return true
  end
end

def valid_move?(board, index)
  if index.between?(0, 8) && !position_taken?(board, index)
    return true
  else 
    return false
  end
end

def turn(board) 
  puts "Please enter 1-9:" #asking for user input
  user_input = gets.strip #using gets to get user input and striping it of whitespace
  index = input_to_index(user_input) #taking user input changing to array index
  if valid_move?(board, index) # if move is valid
     move(board, index, "X") # perform the move, with arguments (pieces that we need)
     display_board(board) #display board that now has X
  else #if input is invalid
    turn(board) #ask player to make a move again
  end
end  
  
  
  

