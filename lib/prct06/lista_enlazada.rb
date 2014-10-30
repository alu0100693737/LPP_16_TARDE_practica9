module Prct06
  class Lista_enlazada
    
    attr_accessor :cabeza, :ultelem,:valor, :siguiente
    
    # create a Struct with :value and :next
    nodo = Struct.new(:valor, :siguiente)
    
    def initialize(a=nil, b=nil)
   	@cabeza=a
	@ultelem=b
    end
    
    def push(args)
      if @cabeza== nil 
	cabeza=args
      else
	args.siguiente = cabeza
	cabeza = args
      end
    end 
    
    def pop()
      if @cabeza!=nil
	destruir = cabeza
	cabeza = cabeza.siguiente  
	destruir.valor
      else
	puts 'No habia nada en la lista enlazada'
      end
    end
    
     def to_tex
    end
    
  end
end
    
