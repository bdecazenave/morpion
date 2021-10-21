require 'bundler'
Bundler.require

require_relative 'lib/Board'
require_relative 'lib/BoardCase'
require_relative 'lib/Player'
require_relative 'lib/Game'
require_relative 'Show'


class Application

def perform 
jeu = Game.new
 # TO DO : méthode qui initialise le jeu puis contient des boucles while pour faire tourner le jeu tant que la partie n'est pas terminée.
end           


end 


Application.new.perform
