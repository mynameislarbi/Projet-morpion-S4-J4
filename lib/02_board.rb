require 'colorize'

class Board
#TO DO : la classe a 1 attr_accessor : 
#un array/hash qui contient les BoardCases.
#Optionnellement on peut aussi lui rajouter un autre sous le nom 
#@count_turn pour compter le nombre de coups joué
attr_accessor :board

  def initialize
  #TO DO :#Quand la classe s'initialize, 
  #elle doit créer 9 instances BoardCases
  #Ces instances sont rangées dans un array/hash 
  #qui est l'attr_accessor de la classe
  @board = [1, 2, 3, 4, 5, 6, 7, 8, 9]
  end

  def play_turn
  #TO DO : une méthode qui :
  #1) demande au bon joueur ce qu'il souhaite faire
  #2) change la BoardCase jouée en fonction de la valeur du joueur (X ou O)
  if (1..9).include? @board[array[2]]
    if array[1] == "X"
      @board[array[2]] = "X".yellow
    else
      @board[array[2]] = "O".red
    end
  else
    puts "Dommage tu as manqué ton tour!"
  end
  end

  def victory?
    #TO DO : une méthode qui vérifie le plateau et indique 
    #s'il y a un vainqueur ou match nul
    case
    when @board[0] == @board[1] && @board[0] == @board[2] && @board[0] != 1 && @board[1] != 2 && @board[2] != 3
      return true
    when @board[3] == @board[4] && @board[3] == @board[5] && @board[3] != 4 && @board[4] != 5 && @board[5] != 6
      return true
    when @board[6] == @board[7] && @board[6] == @board[8] && @board[6] != 7 && @board[7] != 8 && @board[8] != 9
      return true
    when @board[0] == @board[3] && @board[0] == @board[6] && @board[0] != 1 && @board[3] != 4 && @board[6] != 7
      return true
    when @board[2] == @board[5] && @board[2] == @board[8] && @board[2] != 3 && @board[5] != 6 && @board[8] != 9
      return true
    when @board[0] == @board[4] && @board[0] == @board[8] && @board[0] != 1 && @board[4] != 5 && @board[8] != 9
      return true
    when @board[2] == @board[4] && @board[2] == @board[6] && @board[2] != 3 && @board[4] != 5 && @board[6] != 7
      return true
    when @board[1] == @board[4] && @board[1] == @board[7] && @board[1] != 2 && @board[4] != 5 && @board[7] != 8
      return true
    else
      return false
    end
  end

end