module Prct06
  class Lista_enlazada
    
    include Enumerable
    attr_accessor :cabeza,:valor, :siguiente,:antes
    
    # create a Struct with :value and :next
    nodo = Struct.new(:valor, :antes,:siguiente )
    
    def initialize(a=nil, b=nil)
   	@cabeza=a
	@ultelem=b
    end
    
    def push_antes(base,nuevo)
      if @cabeza== nil 
	cabeza=nuevo
      elsif @base==nil 
	nuevo.siguiente = cabeza
	cabeza.anterior = nuevo
	#suponemos que nuevo anterio ya es nulo
      
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
	  cabeza=nuevo
      
      elsif @base==nil 
	nuevo.siguiente = cabeza
	cabeza.anterior = nuevo
	#suponemos que nuevo anterio ya es nulo
      
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
    
    def pop(nodo)
      if @cabeza!=nil
	
	aux=@cabeza
	while aux.valor =! nodo.valor 
	 aux.siguiente = aux
	end 
	destruir =aux.valor
	aux2=nodo.anterior
	aux3=nodo.siguiente
	aux2.anterior =aux3
	aux3.anterior=aux2
	destruir.to_s
      else
	puts 'No habia nada en la lista enlazada'
	return nil
      end
    end
    
    
    def to_tex
    end
    
    def each
      aux =@cabeza
      while(aux!=nil)do
	yield aux.valor
	aux=aux.siguiente
      end
    end
    
  end
    
end

    
