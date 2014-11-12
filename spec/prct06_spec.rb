require 'spec_helper'
require 'prct06'
#require "lib/prct06"
describe Preguntas do
		describe Preguntas::Preg do
		  before :each do
		    @preg1=Preguntas::EleccionSimple.new(
 			:pregunta => "salida de : 
 			class Xyz \n def pots\n
 			@nice\n end\nend\n",:Op_correcta => 'nil',
 			:Op_incorrecta => ['#<Xyz:0x00000002bf0ed0>',0, "ninguna de las anteriores" ])
		  end
		  context "La Pregunta tiene que tener un enunciado" do
		      it "tiene que tener un enunciado" do
			  expect(@preg1.pregunta) == 'salida de : 
				class Xyz \n def pots\n
				  @nice\n end\nend\n'
		      end
		  
		 end
		end		
		describe Preguntas::EleccionSimple do
		  before :each do 
		    @preg1=Preguntas::EleccionSimple.new(
 			    :pregunta => "salida de :
			    class Array \n 
			    def say_hi \n HEY!end end \n
			    p[1,, bob].say_hi", 
 			    :Op_correcta => "Ninguna de las anteriores",
 			    :Op_incorrecta => ['1', 'bob', 'HEY!'])
		    @preg2=Preguntas::EleccionSimple.new(
			  :pregunta => "salida de :
 			  class Objeto \n
 			  end", :Op_correcta => "Una instancia de la clase Class",
 			  :Op_incorrecta => ['una constante', 'un objeto', 'ninguna de las anteriores'])
		  end
		  context "Clase EleccionSimple" do
		    it "Es de la clase SeleccionSimple" do
		      expect(@preg1.class) ==  EleccionSimple      
		    end
	        
		    it "Debe tener una respuesta correcta y varias incorrecta" do
		      expect(@preg1.Op_correcta) == 'Ninguna de las anteriores'	       
		      expect(@preg1.Op_incorrecta) == ['1', 'bob', 'HEY!']       
		    end	
	    
		    it "tiene que tener un metodo to_s" do
		      expect(@preg1).to respond_to :to_s       
		    end	
		    it "Comparando preguntas" do
		      expect(@preg2==@preg1).to eq(false)
		      expect(@preg2 <@preg1).to eq(true)
		  
	    
		  end
	      end	    
		  
		
		
		end
		describe Preguntas::Verdadero_Falso do
		  before :each do 
		    @preg1=Preguntas::EleccionSimple.new(
 			:pregunta => "Es apropiado que una clase tablero herede de la clase juego? ",
 			:Op_verdadera => "Falso", :Op_falsa => 'Cierto')
		    @preg2=Preguntas::EleccionSimple.new(
			:pregunta => "salida de :
			hash_raro ={ \n
			[1, 2, 3] => Object.new(), \n
 			Hash.new => :toto
 			}", :Op_correcta => "Cierto", 
			:Op_incorrecta => "Falso" )
		  end
		  
		  context "Clase EleccionSimple" do
		    it "Es de la clase SeleccionSimple" do
		      expect(@preg1.class) ==  EleccionSimple      
		    end
	        
		    it "Debe tener una respuesta correcta y varias incorrecta" do
		      expect(@preg1.Op_verdadera) == 'Cierto'	       
		      expect(@preg1.Op_falsa) == 'Falso'      
		    end	
	    
		    it "tiene que tener un metodo to_s" do
		      expect(@preg1).to respond_to :to_s       
		    end	
		    it "Comparando preguntas" do
		      expect(@preg2==@preg1).to eq(false)
		      expect(@preg2 <@preg1).to eq(false)
		  
	    
		  end
		  
		  
		  
		  
		  
		end
		end

end


describe Prct06 do
		describe Prct06::Lista_enlazada do

			before :each do
				nodo = Struct.new(:valor, :antes, :siguiente)
				@lista_enlazada=Prct06::Lista_enlazada.new
				#@lista_enlazada2=Prct06::Lista_enlazada.new
 				@preg1=Preguntas::EleccionSimple.new(
 					:pregunta => "salida de : 
 					class Xyz \n def pots\n
 					@nice\n end\nend\n",:Op_correcta => 'nil',
 				 	:Op_incorrecta => ['#<Xyz:0x00000002bf0ed0>',0, "ninguna de las anteriores" ])
 
 				@nodo1=nodo.new(@preg1, nil, nil)
 				@lista_enlazada=Prct06::Lista_enlazada.new
 				
 				@preg2=Preguntas::EleccionSimple.new(
 				      :pregunta => "salida de :
 				      hash_raro ={ \n
 				      [1, 2, 3] => Object.new(), \n
 				      Hash.new => :toto
 				      }", :Op_correcta => "Cierto", 
 				      :Op_incorrecta => "Falso" )
 				
 				@nodo2=nodo.new(@preg2, nil, nil)
 				
 				@preg3=Preguntas::EleccionSimple.new(
 				      :pregunta => "salida de :
 				      class Array \n 
 				      def say_hi \n
 				      HEY! 
 				      end
 				      end \n
 				      p[1,, bob].say_hi", 
 				      :Op_correcta => "Ninguna de las anteriores",
 				      :Op_incorrecta => ['1', 'bob', 'HEY!'])
 				      
 				@nodo3=nodo.new(@preg3, nil)
 				
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
 						
  				@lista_enlazada.push_antes(nil, @nodo1)
 				@lista_enlazada.push_despues(@nodo1, @nodo5)
							
 			end
			
# 			context "cuando se construye una pregunta" do
# 				it " tiene que tener un texto y algunas opciones" do
# 					expect(@preg4.pregunta).to match("salida de ")
# 					expect(@preg4.Op_correcta)== 'Una instancia de la clase Class'
# 					expect(@preg4.Op_incorrecta)==['una constante', 'un objeto', 'ninguna de las anteriores']
# 				end
# 				it "tiene que tener 3 componentes" do
# 					expect{Preguntas::EleccionSimple.new(
# 						 :pregunta => '5*8=?' )}.to raise_error(ArgumentError)
# 				end
# # 				it " Además, se tendra una respuesta correcta única " do
# # 					expect(@preg5.Op_correcta) == 'Falso'
# # 				end
# 				it " tiene que tener un texto y algunas opciones" do
# 					expect(@preg5.pregunta).to match("(\w|\s)*clase tablero ")
# 					expect(@preg5.Op_correcta)== 'Falso'
# 					expect(@preg5.Op_incorrecta)==['Cierto']
# 				end
# 				
#	end
			
			
			
 			context "Comprobacion de existencia de metodos" do
 				it "existe un metodo pop" do
 					expect(@lista_enlazada).to respond_to :pop
 				end
  				it "existe un metodo push" do
 					expect(@lista_enlazada).to respond_to :to_tex
 				end
 			end
			context "Clase Lista_enlazada " do 
			  it "Pertenece a la clase lista_enlazada"do
			         expect(@lista_enlazada.class) ==  Lista_enlazada       
		  	  end
			  it "se debe poder introducir un elemento en cualquier lugar "do
			    @lista_enlazada.push_antes(@nodo1, @nodo3)
			    @lista_enlazada.push_despues(@nodo5, @nodo4)
			    @lista_enlazada.push_despues(@nodo3, @nodo2) 
			    expect(@lista_enlazada.cabeza).to eq(@nodo3)
			  end
			  it "se debe poder sacar un elemento en cualquier lugar "do
			      @lista_enlazada.pop_antes(@nodo3)
			      expect(@lista_enlazada.cabeza).to eq(@nodo1)
			  end
			  it "Se puede hacer un each" do
			    @lista_enlazada.each{ |i| i }
			  end
			  
			end

      end 	

end