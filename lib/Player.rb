require_relative 'Board'
require_relative 'BoardCase'


class Player
  #TO DO : la classe a 2 attr_reader, son nom et sa valeur (X ou O).
attr_accessor :name, :symbol
  
  def initialize(name, symbol)
    @name = name
    @symbol = symbol
    #TO DO : doit régler son nom et sa valeur
  end
end
