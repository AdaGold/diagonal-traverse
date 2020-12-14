require "pry"
# Input:  A matrix of M x N elements (M rows, N columns), 
# Return value:  All elements of the matrix in diagonal order.
#  Example input:
# [
#  [ 1, 2, 3 ],
#  [ 4, 5, 6 ],
#  [ 7, 8, 9 ]
# ]
# Example Output:  [1, 2, 4, 7, 5, 3, 6, 8, 9]

def diagonal_traversal(matrix)
  return [] if matrix.nil?
  return [] if matrix.length == 0
  return [] if matrix[0].length == 0
  return matrix[0] if matrix.length == 1

  row = col = 0
  row_direction = -1
  col_direction = 1
  output = []

  until (row == matrix.length - 1 && col == matrix[0].length - 1)
    # puts "On [#{row}][#{col}]"

    output << matrix[row][col]
    row += row_direction
    col += col_direction
    # puts "Moving to [#{row}][#{col}]"

    # binding.pry

    if row < 0 && col >= matrix[0].length
      row += 2
      row_direction = 1
      col_direction = -1
      col = matrix[0].length - 1
    elsif col >= matrix[0].length 
      row += 2
      col = matrix[0].length - 1
      row_direction = 1
      col_direction = -1      
    elsif row == matrix.length
      col += 2
      row -= 1
      row_direction = -1
      col_direction = 1
    elsif row < 0
      row = 0
      row_direction = 1
      col_direction = -1
    elsif row >= matrix.length
      row = (matrix.length) - 1
      col += 2
      row_direction = -1      
      col_direction = 1
    elsif col < 0
      col = 0
      col_direction = 1
      row_direction = -1
    elsif col >= matrix[0].length
      col = matrix[0].length - 1
      row += 2
      col_direction = -1
      row_direction = 1
    end

  end

  output << matrix[row][col]

  return output
end












