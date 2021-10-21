require_relative "BoardCase"

class Board
  
  attr_accessor :tab, :count_turn
  
  def initialize
    @tab = []
    @count_turn = 0
    index = 1
    9.times do 
      if index <= 3
        case_id = "A#{index}"
        current_case = BoardCase.new(case_id)
        @tab.push(current_case)

      elsif index > 3 && index <= 6
        case_id  = "B#{index - 3}"
        current_case = BoardCase.new(case_id)
        @tab.push(current_case)

      else
        case_id  = "C#{index - 6}"
        current_case = BoardCase.new(case_id)
        @tab.push(current_case)
      end
      index += 1 
    end 
  end 

  def choose_a_case(board, game)
    puts "Choisis une case :"
    chosen_case = gets.chomp.to_s.upcase

    @tab.each do |boardcase|
      if boardcase.case_id == chosen_case

        if boardcase.value = " "
          boardcase.is_chosen(@symbol)
          game.turn_number += 1

        elsif boardcase.value = "O" || "X"
          puts "Désolé mais cette case est déjà utilisée... "
          puts "et comme tu ne sembles pas très concentré, tu as perdu ton tour !"
        end
      end
    end
  end
  
  def victory?
    if count_turn < 9
      if @tab[0].value == @tab[1].value && @tab[0].value == @tab[2].value || @tab[3].value == @tab[4].value &&  @tab[3].value == @tab[5].value || @tab[6].value == @tab[7].value && @tab[6].value == @tab[8].value || @tab[0].value == @tab[4].value && @tab[0].value == @tab[8].value || @tab[2].value == @tab[4].value && @tab[2].value == @tab[6].value||@tab[0].value == @tab[3].value && @tab[0].value== @tab[6].value|| @tab[1].value == @tab[4].value &&  @tab[1].value == @tab[7].value || @tab[2].value == @tab[5].value &&  @tab[2].value == @tab[8].value

        #return = true
        if "#{@tab[0].value}" == "#{player1.symbol}" && @tab[1].value == "#{player1.symbol}" && "#{@tab[3].value}" == "#{player1.symbol}" || @tab[3].value == "#{player1.symbol}" && @tab[4].value == "#{player1.symbol}" && @tab[5].value == "#{player1.symbol}" || @tab[6].value == "#{player1.symbol}" && @tab[7].value == "#{player1.symbol}" && @tab[8].value == "#{player1.symbol}"
          "#{@tab[0].value}" == "#{player1.symbol}" && @tab[3].value == "#{player1.symbol}" && "#{@tab[6].value}" == "#{player1.symbol}" || @tab[1].value == "#{player1.symbol}" && @tab[4].value == "#{player1.symbol}" && @tab[7].value == "#{player1.symbol}"
          "#{@tab[2].value}" == "#{player1.symbol}" && @tab[5].value == "#{player1.symbol}" && @tab[8].value == "#{player1.symbol}" || "#{@tab[0].value}" == "#{player1.symbol}" && @tab[4].value =="#{player1.symbol}" && @tab[8].value == "#{player1.symbol}"
          "#{@tab[2].value}" == "#{player1.symbol}" && @tab[4].value == "#{player1.symbol}" && "#{@tab[6].value}" == "#{player1.symbol}" 
          puts "#{player1.name} wwoow tes chaud t'as gagné !!!!!"
        else
          
          puts "#{player2.name} wwoow tes chaud t'as gagné !!!!!"
        end 
      else 
      puts "Match nul les boloss"
      end 
    end 
        
  end 
end
