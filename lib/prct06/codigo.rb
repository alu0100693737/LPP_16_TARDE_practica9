require 'pry'
module Preguntas
  class Preg
  attr_accessor :pregunta
    
    include Comparable
  
    def initialize args
      @pregunta = args[:pregunta]
	raise ArgumentError , 'Specify :pregunta , :Op_correcta y :Op_incorrecta' unless @pregunta
          end
    
     def to_html
		opcion = @Op_incorrecta+[@Op_correcta]
		opcion = opcion.shuffle
		s= ''
		opcion.each do |opcion|

			s += %Q{<input type="radio" value="#{opcion}" name = 0 > #{opcion}\n}
		end	
		
		#html <<= -"HTML"
		"#{@pregunta}<br/>\n#{s}\n"
    end
    
    def <=>(other)
      pregunta.size <=> other.pregunta.size
      pregunta = other.pregunta
    end
  
  end 

    class EleccionSimple <Preg 
    attr_accessor :Op_correcta, :Op_incorrecta
    
      
    def initialize args
     
    
      
      @Op_correcta = args[:Op_correcta]
	raise ArgumentError , 'Specify :pregunta , :Op_correcta y :Op_incorrecta' unless @Op_correcta
      @Op_incorrecta = args[:Op_incorrecta]
        raise ArgumentError , 'Specify :pregunta , :Op_correcta y :Op_incorrecta' unless @Op_incorrecta
      
	super(args[:pregunta])
    end
    

   def <=>(other)
     super
     Op_correcta.size<=>other.Op_correcta.size
     Op_correca==other.Op_correcta
   end
   
      def to_s
      opcion = @Op_incorrecta+[@Op_correcta]
      opcion = opcion.shuffle
      s= ''
      opcion.each do |opcion|
	
	s += %Q{-#{opcion}\n}
	
      end
	 "#{@pregunta} \n #{s}\n"

	
    end
		
  end
  
  
  class Verdadero_Falso < Preg
    
    attr_accessor :Op_verdadera, :Op_falsa
        
    def initialize args
      
      @Op_verdadera = args[:Op_verdadera]
	raise ArgumentError , 'Specify :pregunta , :Op_verdadera y :Op_falsa' unless @Op_verdadera
      @Op_falsa = args[:Op_falsa]
        raise ArgumentError , 'Specify :pregunta , :Op_verdadera y :Op_falsa' unless @Op_falsa

      
      
      super(args[:pregunta])
    end
    
   
    
      def to_s
      opcion = @Op_incorrecta+[@Op_correcta]
      opcion = opcion.shuffle
      s= ''
      opcion.each do |opcion|
	
	s += %Q{-#{opcion}\n}
	
      end
	 "#{@pregunta} \n #{s}\n"

	
      end#def to_s
    +

	def<=>(other)
	  super
	  Op_falsa.size<=> other.Op_falsa.size
	end
    
  end
end
