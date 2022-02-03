class BoardCase
  #TO DO : la classe a 2 attr_accessor, 
  #sa valeur en string (X, O, ou vide), 
  #ainsi que son identifiant de case
 attr_accessor :value, :indentifiant_case

 def initialize
   #TO DO : doit régler sa valeur, ainsi que son numéro de case
   @value = ["X","O", " "]
   @indentifiant_case =["A1","A2","A3","B3","B2","B3","C1","C2","C3"]
 end

end