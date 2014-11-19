require 'pry'
module Preguntas
  class Preg
  attr_accessor :pregunta
    
    include Comparable
  
    def initialize args
      @pregunta = args
	raise ArgumentError , 'Specify :pregunta , :op_correcta y :Op_incorrecta' unless @pregunta
    end
    
     def to_html
		opcion = @Op_incorrecta+[@op_correcta]
		opcion = opcion.shuffle
		s= ''
		opcion.each do |opcion|

			s += %Q{<input type="radio" value="#{opcion}" name = 0 > #{opcion}\n}
		end	
		
		#html <<= -"HTML"
		"#{@pregunta}<br/>\n#{s}\n"
    end
    
    def <=>(other)
      pregunta <=> other.pregunta
      #pregunta == other.pregunta
    end
  
  end 

    class EleccionSimple <Preg 
    attr_accessor :op_correcta, :Op_incorrecta
    
      
    def initialize args
     
    
      
      @op_correcta = args[:op_correcta]
	raise ArgumentError , 'Specify :pregunta , :op_correcta y :Op_incorrecta' unless @op_correcta
      @Op_incorrecta = args[:Op_incorrecta]
        raise ArgumentError , 'Specify :pregunta , :op_correcta y :Op_incorrecta' unless @Op_incorrecta
      
	super(args[:pregunta])
    end
    

   def <=>(other)
     super
     op_correcta.size <=> other.op_correcta.size
     #op_correcta==other.op_correcta
   end
   
      def to_s
      opcion = @Op_incorrecta+[@op_correcta]
      opcion = opcion.shuffle
      s= ''
      opcion.each do |opcion|
	
	s += %Q{-#{opcion}\n}
	
      end
	 "#{@pregunta} \n #{s}\n"

	
    end
		
  end
  
  
  class Verdadero_Falso < Preg
    
    attr_accessor :Op_verdadera, :op_falsa
        
    def initialize args
      
      @Op_verdadera = args[:Op_verdadera]
	raise ArgumentError , 'Specify :pregunta , :Op_verdadera y :op_falsa' unless @Op_verdadera
      @op_falsa = args[:op_falsa]
        raise ArgumentError , 'Specify :pregunta , :Op_verdadera y :op_falsa' unless @op_falsa

      
      
      super(args[:pregunta])
    end
    
   
    
      def to_s
      opcion = @Op_incorrecta+[@op_correcta]
      opcion = opcion.shuffle
      s= ''
      opcion.each do |opcion|
	
	s += %Q{-#{opcion}\n}
	
      end
	 "#{@pregunta} \n #{s}\n"

	
      end#def to_s
   

	def <=>(other)
	  super
	  op_falsa <=> other.op_falsa
	   #op_falsa == other.op_falsa
	end
    
  end
end
