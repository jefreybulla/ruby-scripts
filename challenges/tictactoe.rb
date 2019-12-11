#Challenge: implement a method that checks if there is a winner on a tictactoe board
#The status of the board is represented by an array with this format: board=[ "o","x","","","o","x","","","" ]

#The unique positions of the board are [0,1,2,3,4,5,6,7,8]
#0..2 first row of board
#3..4 second row of board
#6..8 third row of board

def check_result(board)
  winner = false
  #winning scenarios provides the template to find the winner
  winning_scenarios=[[0,1,2],[3,4,5],[6,7,8],[0,3,6],[1,4,7],[2,5,8],[0,4,8],[2,4,6]]

  winning_scenarios.each do |w|
    if board[w[0]]!="" && board[w[0]] == board[w[1]] && board[w[0]] == board[w[2]]
      puts "#{board[w[0]]} is the winner"
      winner = true
    end
    break if winner == true
  end

  if !winner
    puts "No winner yet"
  end

end

#change the board array to change the board dstatus and see check_result at work

board=[ "","","x","","x","","x","o","o" ]
check_result(board)
