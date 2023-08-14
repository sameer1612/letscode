# frozen_string_literal: true

# @param {Character[][]} board
# @return {Boolean}
def is_valid_sudoku(board)
  uniq_rows?(board) && uniq_cols?(board) && uniq_blocks?(board)
end

def uniq_rows?(board)
  9.times { |i| return false unless uniq_nums?(board[i]) }

  true
end

def uniq_cols?(board)
  board = board.transpose
  9.times { |i| return false unless uniq_nums?(board[i]) }

  true
end

def uniq_blocks?(board)
  i = 0
  j = 0
  while i < 9
    while j < 9
      block_values = [(0..2).map { |x| (0..2).map { |y| board[i + x][j + y] } }].flatten
      return false unless uniq_nums? block_values

      j += 3
    end
    i += 3
    j = 0
  end

  true
end

def uniq_nums?(arr)
  arr = arr.filter { |num| num != '.' }
  arr.length == arr.uniq.length
end

board =
  [%w[. . . . . . 5 . .],
   %w[. . . . . . . . .],
   %w[. . . . . . . . .],
   %w[9 3 . . 2 . 4 . .],
   %w[. . 7 . . . 3 . .],
   %w[. . . . . . . . .],
   %w[. . . 3 4 . . . .],
   %w[. . . . . 3 . . .],
   %w[. . . . . 5 2 . .]]

p is_valid_sudoku board  # false
