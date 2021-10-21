require 'bundler'
Bundler.require

require_relative 'Board'
require_relative 'BoardCase'
require_relative 'Player'


class Game
  #TO DO : la classe a plusieurs attr_accessor: le current_player (égal à un objet Player), le status (en cours, nul ou un objet Player s'il gagne), le Board et un array contenant les 2 joueurs.
attr_accessor :current_player, :status, :Board, :users_array
  def initialize
    #TO DO : créé 2 joueurs, créé un board, met le status à "on going", défini un current_player
    
    @status = "on_going"
    #@current_player = player1
    @board = Board.new
    @users_array = []
  end

  def create_players(name, symbol)
  player1 = Player.new("Inthone","X")
  player2 = Player.new("Mariem","O")
  @users_array = [player1,player2] 
  
  end






  def turn
    #TO DO : méthode faisant appelle aux méthodes des autres classes (notamment à l'instance de Board). Elle affiche le plateau, demande au joueur ce qu'il joue, vérifie si un joueur a gagné, passe au joueur suivant si la partie n'est pas finie.
  
    puts @board
    puts "-------------"
    puts " #{@tab[0].value} | #{@tab[1].value} | #{@tab[2].value} |"
    puts "-------------"
    puts " #{@tab[3].value} | #{@tab[4].value} | #{@tab[5].value} |"
    puts "-------------"
    puts " #{@tab[6].value} | #{@tab[7].value} | #{@tab[8].value} |"
    puts "-------------"  
    puts @users_array.play_turn
    puts @users_array.victory?
  
  end

  def new_round
    # TO DO : relance une partie en initialisant un nouveau board mais en gardant les mêmes joueurs.
    @board = Board.new
  end

  
  def game_end
    # TO DO : permet l'affichage de fin de partie quand un vainqueur est détecté ou si il y a match nul
      sleep(2)
if @board.victory?  
      return "______________
╔╗ ╦═╗╔═╗╦  ╦╔═╗
╠╩╗╠╦╝╠═╣╚╗╔╝║ ║
╚═╝╩╚═╩ ╩ ╚╝ ╚═╝
*****************
#{@current_player.name} !
*****************
╔╦╗╦ ╦  ╔═╗╔═╗ 
 ║ ║ ║  ╠═╣╚═╗ 
 ╩ ╚═╝  ╩ ╩╚═╝ 
╔═╗╔═╗╔═╗╔╗╔╔═╗
║ ╦╠═╣║ ╦║║║║╣ 
╚═╝╩ ╩╚═╝╝╚╝╚═╝
______________" 
else   return "_________________________________________________
                                                  
                     'cxOOxc'                     
                  ':d0NWWWWNKxc'                  
                ;oONWWWWWWWWWWN0d:'               
             ;oOXWWWNOdddoodkXWWWN0d:             
          ;lkXWWWWNOookK0kdollxXWWWWXOo;          
       ,lkXWWWWWWNxckNWWXOkdxd:lKWWWWWWXOo;       
    ,ckKWWWWWWWWNdc0WWWWXOxdddo;:KWWWWWWWWXkl,    
 'cxKNWWWWWWWWWNd:kXK0OOxdlcllol;cKWWWWWWWWWWKkc, 
'dNWWWWWWWWWWWWk,,;;clcccccccc;'''lXWWWWWWWWWWWWk,
 cXWWWWWWWWWWWXl   'xNWWKkKNW0;   ,OWWWWWWWWWWWNo 
  dNWWWWWWWWWWWKl'  ;OWWNXXWXl   ;kNWWWWWWWWWWWk' 
  ,OWWWWWWWWWN0d:    ,ldxkxo:    ,oOXWWWWWWWWW0;  
   cXWWWWWWWKl'''''''''''''''''''''';kNWWWWWWNl   
    dNWWWWWK: ,kKKKK0KKK00K00K0KKK0c 'kWWWWWWx'   
    ,OWWWWXl  ;0WWWWWWWWWWWWWNWWWWNl  ;OWWWW0;    
     cKWWNd'  ,OWWWWKkkO0X0kOkONWWXl   cKWWXl     
      dNWXc   ,OWWWWNkOkx0xldO0NWWXc   'kWWx'     
      ,OWNx,  'kWWWWNXXXXWNKKWWWWWK:   lXM0;      
       ;dxdc' 'xXXXXXXXXXXXXXXXXXX0;  ;oxd:       
        :kOO0d,:ooooooooooooooooooc,cOOOOc        
        ,kWWWXdodddddddddddddddddxdo0WWW0;        
         ;dxxxxxxxxxxxxxxxxxxxxxxxxxxxxx:         
              ╔═╗╔═╗╔═╗╦  ╦╔╦╗╔═╗   
              ║╣ ║ ╦╠═╣║  ║ ║ ║╣    
              ╚═╝╚═╝╩ ╩╩═╝╩ ╩ ╚═╝   
             ╔═╗╔═╗╦═╗╔═╗╔═╗╔╗╔╗╔╔═╗
             ╠═╝║╣ ╠╦╝╚═╗║ ║║║║║║║╣ 
             ╩  ╚═╝╩╚═╚═╝╚═╝╝╚╝╚╝╚═╝
             ╔╗╔╔═╗  ╔═╗╔═╗╔═╗╔╗╔╔═╗
             ║║║║╣   ║ ╦╠═╣║ ╦║║║║╣ 
             ╝╚╝╚═╝  ╚═╝╩ ╩╚═╝╝╚╝╚═╝
_________________________________________________" 
end    

end
end

