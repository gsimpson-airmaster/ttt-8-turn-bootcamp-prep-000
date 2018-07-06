def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def position_taken?(board, index)
  if(index == nil || board[index] == nil)
    return FALSE
  end
  if(board[index].upcase == "X" || board[index].upcase == "O")
    return TRUE
  else
    return FALSE
  end
end

def valid_move?(board, index)
  if(index < 0 || index > 9 || index == nil)
    return FALSE
  elsif(position_taken?(board, index))
    return FALSE
  else
    return TRUE
  end
end

def input_to_index(i)
  return (i.to_i - 1)
end

def move(board, ind, arg = 'X')
  board[ind] = arg
end

def turn
  
end
