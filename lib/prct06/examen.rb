module Prct06
  class Examen
    attr_accessor :lista_enlazada
      nodo = Struct.new(:valor, :antes,:siguiente )
      def initialize
	@lista_enlazada=Prct06::Lista_enlazada.new
	@preg2=Preguntas::EleccionSimple.new(
 	    :pregunta => "salida de :
	    class Array \n 
	    def say_hi \n HEY!end end \n
	    p[1,, bob].say_hi", 
 	    :op_correcta => "Ninguna de las anteriores",
 	    :Op_incorrecta => ['1', 'bob', 'HEY!'])
	@preg3=Preguntas::EleccionSimple.new(
	  :pregunta => "salida de :
 	   class Objeto \n
 	   end", :op_correcta => "Una instancia de la clase Class",
 	  :Op_incorrecta => ['una constante', 'un objeto', 'ninguna de las anteriores'])
	
	@preg1=Preguntas::Verdadero_Falso.new(
	    :pregunta => "Es apropiado que una clase tablero herede de la clase juego? ",
	    :Op_verdadera => "Falso", :op_falsa => "Cierto")
	@preg4=Preguntas::Verdadero_Falso.new(
	    :pregunta => "salida de :
	    hash_raro ={ \n
	    [1, 2, 3] => Object.new(), \n
	    Hash.new => :toto
	    }", :Op_verdadera => "Cierto", 
	    :op_falsa => "Falso" )
	@preg5=Preguntas::EleccionSimple.new(
	    :pregunta => "salida de : 
	    class Xyz \n def pots\n
	    @nice\n end\nend\n",:op_correcta => 'nil',
	    :Op_incorrecta => ['#<Xyz:0x00000002bf0ed0>','0', "ninguna de las anteriores" ])
	
	@nodo1=nodo.new(@preg1, nil,nil)
 	@nodo2=nodo.new(@preg2, nil,nil)
	@nodo3=nodo.new(@preg3, nil,nil)
 	@nodo4=nodo.new(@preg4, nil,nil)
	@nodo5=nodo.new(@preg5, nil,nil)
	@lista_enlazada.push_antes(nil, @nodo1)
 	@lista_enlazada.push_antes(@nodo1, @nodo2)					
  	@lista_enlazada.push_antes(@nodo2, @nodo3)
	@lista_enlazada.push_antes(@nodo3, @nodo4)
	@lista_enlazada.push_antes(@nodo4, @nodo5)
      end
      
      def pop()
	cosa =@lista_enlazada.pop_principio()
      end
	
      
      
      
      
      
  end
end
