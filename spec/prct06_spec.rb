require 'spec_helper'
require 'prct06'
#require "lib/prct06"
describe Preguntas do
		describe Preguntas::Preg do
		  before :each do
		    @preg1=Preguntas::Preg.new(
 			:pregunta => "salida de : 
 			class Xyz \n def pots\n
 			@nice\n end\nend\n")
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
 			    :op_correcta => "Ninguna de las anteriores",
 			    :Op_incorrecta => ['1', 'bob', 'HEY!'])
		    @preg2=Preguntas::EleccionSimple.new(
			  :pregunta => "salida de :
 			  class Objeto \n
 			  end", :op_correcta => "Una instancia de la clase Class",
 			  :Op_incorrecta => ['una constante', 'un objeto', 'ninguna de las anteriores'])
		  end
		  context "Clase EleccionSimple" do
		    it "Es de la clase SeleccionSimple" do
		      expect(@preg1.class) ==  Preguntas::EleccionSimple      
		    end
	        
		    it "Debe tener una respuesta correcta y varias incorrecta" do
		      expect(@preg1.op_correcta) == 'Ninguna de las anteriores'	       
		      expect(@preg1.Op_incorrecta) == ['1', 'bob', 'HEY!']       
		    end	
	    
		    it "tiene que tener un metodo to_s" do
		      expect(@preg1).to respond_to :to_s       
		    end	
		    it "Comparando preguntas" do
		      expect(@preg2==@preg1).to eq(false)
		      expect(@preg1 < @preg2).to eq(true)
		  
	    
		  end
	      end	    
		  
		
		
		end
		describe Preguntas::Verdadero_Falso do
		  before :each do 
		    @preg1=Preguntas::Verdadero_Falso.new(
 			:pregunta => "Es apropiado que una clase tablero herede de la clase juego? ",
 			:op_verdadera => "Falso", :op_falsa => "Cierto")
		    @preg2=Preguntas::Verdadero_Falso.new(
			:pregunta => "salida de :
			hash_raro ={ \n
			[1, 2, 3] => Object.new(), \n
 			Hash.new => :toto
 			}", :op_verdadera => "Cierto", 
			:op_falsa => "Falso" )
		  end
		  
		  context "Clase EleccionSimple" do
		    it "Es de la clase SeleccionSimple" do
		      expect(@preg1.class) ==  Preguntas::Verdadero_Falso    
		    end
	        
		    it "Debe tener una respuesta correcta y varias incorrecta" do
		      expect(@preg1.op_verdadera) == 'Cierto'	       
		      expect(@preg1.op_falsa) == 'Falso'      
		    end	
	    
		    it "tiene que tener un metodo to_s" do
		      expect(@preg1).to respond_to :to_s       
		    end	
		    it "Comparando preguntas" do
		       #expect(@preg2==@preg1).to eq(false)
		      expect(@preg2 > @preg1).to eq(true)
		    end
		  it "son el mismo objeto" do
		  expect(@preg1.object_id == @preg2.object_id).to eq(false)
		  end
		  it "responde a metodos de clase" do
		    class << Preguntas::Verdadero_Falso
		      def hola
		      "hola mundo"
		      end
		    end
		    expect(Preguntas::Verdadero_Falso).to respond_to :hola 
		  
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
 					@nice\n end\nend\n",:op_correcta => "nil",
 				 	:Op_incorrecta => ['#<Xyz:0x00000002bf0ed0>','0', "ninguna de las anteriores" ])
  							
 				@preg2=Preguntas::EleccionSimple.new(
 				      :pregunta => "salida de :
 				      hash_raro ={ \n
 				      [1, 2, 3] => Object.new(), \n
 				      Hash.new => :toto
 				      }", :op_correcta => "Cierto", 
 				      :Op_incorrecta => ['Falso'] )
 				 								
 				@preg3=Preguntas::EleccionSimple.new(
 				      :pregunta => "salida de :
 				      class Array \n 
 				      def say_hi \n
 				      HEY! 
 				      end
 				      end \n
 				      p[1,, bob].say_hi", 
 				      :op_correcta => "Ninguna de las anteriores",
 				      :Op_incorrecta => ['1', 'bob', 'HEY!'])
 								
 				@preg4=Preguntas::EleccionSimple.new(
 				      :pregunta => "salida de :
 				      class Objeto \n
 				      end", :op_correcta => "Una instancia de la clase Class",
 				      :Op_incorrecta => ['una constante', 'un objeto', 'ninguna de las anteriores'])
 								
 				@preg5=Preguntas::EleccionSimple.new(
 				      :pregunta => "es apropiado que una clase tablero herede de la clase juego? ",
 				      :op_correcta => "Falso", :Op_incorrecta=> ['Cierto'])
				
 				
 						
  				@lista_enlazada.push(@preg1)
 				@lista_enlazada.push(@preg2)
				@lista_enlazada.push(@preg3)
				@lista_enlazada.push(@preg4)
				@lista_enlazada.push(@preg5) 
							
 			end
			
# 			context "cuando se construye una pregunta" do
# 				it " tiene que tener un texto y algunas opciones" do
# 					expect(@preg4.pregunta).to match("salida de ")
# 					expect(@preg4.op_correcta)== 'Una instancia de la clase Class'
# 					expect(@preg4.Op_incorrecta)==['una constante', 'un objeto', 'ninguna de las anteriores']
# 				end
# 				it "tiene que tener 3 componentes" do
# 					expect{Preguntas::EleccionSimple.new(
# 						 :pregunta => '5*8=?' )}.to raise_error(ArgumentError)
# 				end
# # 				it " Además, se tendra una respuesta correcta única " do
# # 					expect(@preg5.op_correcta) == 'Falso'
# # 				end
# 				it " tiene que tener un texto y algunas opciones" do
# 					expect(@preg5.pregunta).to match("(\w|\s)*clase tablero ")
# 					expect(@preg5.op_correcta)== 'Falso'
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
			         expect(@lista_enlazada.class) ==  Prct06::Lista_enlazada       
		  	  end
			  it "se debe poder introducir un elemento en cualquier lugar "do
			    
			    expect(@lista_enlazada.cabeza.valor).to eq(@preg5)
			  end
			  
			  it " se puede hacer un max preguntas" do
			  expect(@lista_enlazada.max) == (@preg5)
			  
			  end
			  
			  it "se debe poder sacar un elemento en cualquier lugar "do
			      @lista_enlazada.pop()
			      @lista_enlazada.pop()
			      @lista_enlazada.pop()
			      @lista_enlazada.pop()
				 
			      expect(@lista_enlazada.cabeza.valor).to eq(@preg1)
			  end
			  it "Se puede hacer un find" do
			    @lista_enlazada.find{ |i| i }
			  end
			  
			  
			  
			end

      end 	
    describe Prct06::Examen do
	before :each do
	  @examen = Prct06::Examen.new
	end  
	  context "Pruebas de examen " do
	    it "Pertenece a la clase lista_enlazada " do
	      expect(@examen.class.ancestors) == Kernel
	    end
	    it "Contiene pregunta" do
	      expect(@examen).to respond_to :pop
	    end
	  end
	  
    end
  describe Prct06::Interfaz do
      before :each do
	  @interfaz = Prct06::Interfaz.new
	end 
	context "Pruebas de examen " do
	    it "Pertenece a la clase lista_enlazada " do
	      expect(@Interfaz.class.ancestors) == Kernel
	    end
	    it "Donde pertenece" do
	      expect(@interfaz.class.superclass) == Object
	    end  
	    it "Contiene dos metodos"do
	       expect(@interfaz).to respond_to :mostrar
	        expect(@interfaz).to respond_to :resultado
	    end
	  end
	  
	
	
  end
  
    
      
      
end