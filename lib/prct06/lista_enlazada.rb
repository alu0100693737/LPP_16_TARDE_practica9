module Prct06
  class Lista_enlazada
    
    attr_accessor :cabeza,:valor, :siguiente,:antes
    
    # create a Struct with :value and :next
    nodo = Struct.new(:valor, :antes,:siguiente )
    
    def initialize(a=nil, b=nil)
   	@cabeza=a
	@ultelem=b
    end
    
    def push_antes(base,nuevo)
      if @cabeza== nil 
	cabeza=args
      else
	
	aux=@cabeza
	while aux.valor =! base.valor 
	 aux.siguiente = aux
		
	end  
	 aux2=aux.antes
	 aux.anterior=nuevo.siguiente
	 aux2.siguiente=nuevo
	 nuevo.siguiente=aux
	 nuevo.anterior=aux2
      end
    end 
     def push_despues(base,nuevo)
      if @cabeza== nil 
	cabeza=args
      else
	  aux=@cabeza
	while aux.valor =! base.valor 
	 aux.siguiente = aux
	end  
	 aux2=aux.siguiente
	 aux.siguiente=nuevo
	 nuevo.siguiente=aux2
	 aux2.anterior=nuevo
	 nuevo.anterior=aux
      end
    end 
    
    def pop_antes(nodo)
      if @cabeza!=nil
	
	destruir = cabeza
	cabeza = cabeza.siguiente  
	destruir.valor
      else
	puts 'No habia nada en la lista enlazada'
	return nil
      end
    end
     def pop_despues(nodo)
      if @cabeza!=nil
	destruir = cabeza
	cabeza = cabeza.siguiente  
	destruir.valor
      else
	puts 'No habia nada en la lista enlazada'
	return nil
      end
    end
    
     def to_tex
    end
    
  end
    def push_ante
    end
    def pop_final
    end
  end
end
    
