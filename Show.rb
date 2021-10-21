require 'bundler'
Bundler.require

require_relative 'lib/Board'
require_relative 'lib/BoardCase'
require_relative 'lib/Player'
require_relative 'lib/Game'


class Show

def show_board(board)
  #TO DO : affiche sur le terminal l'objet de classe Board en entrée. S'active avec un Show.new.show_board(instance_de_Board)
puts @board
end
end 

puts Show.new.show_board(@board)