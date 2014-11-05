require 'spec_helper'
require 'prct06'
#require "lib/prct06"
describe Prct06 do
		describe Prct06::Lista_enlazada do

			before :each do
				nodo = Struct.new(:valor, :siguiente)
				@lista_enlazada=Prct06::Lista_enlazada.new
				@lista_enlazada2=Prct06::Lista_enlazada.new
#  				@preg1=Preguntas::EleccionSimple.new(
#  					:pregunta => "salida de : 
#  					class Xyz \n def pots\n
#  					@nice\n end\nend\n",:Op_correcta => 'nil',
#  				 	:Op_incorrecta => ['#<Xyz:0x00000002bf0ed0>',0, "ninguna de las anteriores" ])
#  
#  				@nodo1=nodo.new(@preg1, nil)
#  				@lista_enlazada=Prct06::Lista_enlazada.new
#  				
#  				@preg2=Preguntas::EleccionSimple.new(
#  				      :pregunta => "salida de :
#  				      hash_raro ={ \n
#  				      [1, 2, 3] => Object.new(), \n
#  				      Hash.new => :toto
#  				      }", :Op_correcta => "Cierto", 
#  				      :Op_incorrecta => "Falso" )
#  				
#  				@nodo2=nodo.new(@preg2, nil)
#  				
#  				@preg3=Preguntas::EleccionSimple.new(
#  				      :pregunta => "salida de :
#  				      class Array \n 
#  				      def say_hi \n
#  				      HEY! 
#  				      end
#  				      end \n
#  				      p[1,, bob].say_hi", 
#  				      :Op_correcta => "Ninguna de las anteriores",
#  				      :Op_incorrecta => ['1', 'bob', 'HEY!'])
#  				      
#  				@nodo3=nodo.new(@preg3, nil)
 				
 				@preg4=Preguntas::EleccionSimple.new(
 				      :pregunta => "salida de :
 				      class Objeto \n
 				      end", :Op_correcta => "Una instancia de la clase Class",
 				      :Op_incorrecta => ['una constante', 'un objeto', 'ninguna de las anteriores'])
 				
 				
 				
 				@preg5=Preguntas::EleccionSimple.new(
 				      :pregunta => "Es apropiado que una clase tablero herede de la clase juego? ",
 				      :Op_correcta => "Falso", :Op_incorrecta => ['Cierto'])
				
 				@nodo4=nodo.new(@preg4, nil)
 				@nodo5=nodo.new(@preg5, nil)
 						
#  				@lista_enlazada.push(@nodo1)
#  				@lista_enlazada.push(@nodo2)
#  				@lista_enlazada.push(@nodo3)
 				@lista_enlazada.push_antes(nil, @nodo4)
 				@lista_enlazada.push_despues(@nodo4, @nodo5)
				#@lista_enlazada.pop
				
				@nodo6=nodo.new("2", nil)
 				@lista_enlazada2.push_antes(nil,@nodo6)
 			end
			
			context "cuando se construye una pregunta" do
				it " tiene que tener un texto y algunas opciones" do
					expect(@preg4.pregunta).to match("salida de ")
					expect(@preg4.Op_correcta)== 'Una instancia de la clase Class'
					expect(@preg4.Op_incorrecta)==['una constante', 'un objeto', 'ninguna de las anteriores']
				end
				it "tiene que tener 3 componentes" do
					expect{Preguntas::EleccionSimple.new(
						 :pregunta => '5*8=?' )}.to raise_error(ArgumentError)
				end
# 				it " Además, se tendra una respuesta correcta única " do
# 					expect(@preg5.Op_correcta) == 'Falso'
# 				end
				it " tiene que tener un texto y algunas opciones" do
					expect(@preg5.pregunta).to match("(\w|\s)*clase tablero ")
					expect(@preg5.Op_correcta)== 'Falso'
					expect(@preg5.Op_incorrecta)==['Cierto']
				end
				
				
				
				
			end
			
			
			
 			context "Comprobacion de existencia de metodos" do
 				it "existe un metodo pop" do
 					expect(@lista_enlazada).to respond_to :pop
 				end
  				it "existe un metodo push" do
 					expect(@lista_enlazada).to respond_to :to_tex
 				end
 			end
			context "Debe existir de la lista con sus datos y su siguiente" do 
			  it "debe existir un nodo con valor "do
			    expect(@nodo6.valor).to match("2")
			  end
			  #it " se extrae el primer elemento de la lista" 
			  
			  it "Debe existir una lista con su cabeza"do
			     #expect(@lista_enlazada2.cabeza.valor)== "2"
			  end
			end

		end 
	
end
