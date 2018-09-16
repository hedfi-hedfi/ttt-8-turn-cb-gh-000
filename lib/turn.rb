def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def valid_move?(board, index)
  return (index.between?(0,8) && !position_taken?(board, index))
end

# re-define your #position_taken? method here, so that you can use it in the #valid_move? method above.
def position_taken?(board, index)
  if board[index] == "" || board[index] == " " || board[index] == nil
    return false
  end
  if board[index] == 'X' || 'O'
    return true
  end
end

def input_to_index(user_input)
  user_input.to_i - 1
end

def move(board, user_input, value="X")
  board[user_input] = value
end

def turn(board)
  puts "Please enter 1-9:"
  user_input = gets.split
  user_input = user_input.to_i
  while (user_input > 9 || user_input < 1)
  user_input = gets.split
  end
  user_input = input_to_index(user_input)
end
