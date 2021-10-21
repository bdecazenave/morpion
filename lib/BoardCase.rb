

class BoardCase
    #TO DO : la classe a 2 attr_accessor, sa valeur en string (X, O, ou vide), ainsi que son identifiant de case
    attr_accessor :case_value, :case_id
    
    def initialize(case_id)
        @case_value = " "
        @case_id = case_id
    end
    
  end