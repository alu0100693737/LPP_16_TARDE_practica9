require 'spec_helper'
require 'prct06'

describe Prct06 do
	class Lista_enlazada
		describe Prct06::Lista_enlazada do

			before :each do
				Nodo = Struct.new(:valor, :siguiente)
				@preg1=Preguntas::EleccionSimple.new(
					:pregunta => "salida de : 
					class Xyz \n def pots\n
					@nice\n end\nend\n",:Op_correcta => 'nil',
				 	:Op_incorrecta['#<Xyz:0x00000002bf0ed0>',0, "ninguna de las anteriores" )
				@nodo1=Nodo.new(@preg1, nil)
				@lista_enlazada=Prct06::Lista_enlazada.new(:cabeza=>nil,:ultelem =>nil)
				@lista_enlazada.push(@nodo1)	
			end





		end 
		
	

	end


 
end
