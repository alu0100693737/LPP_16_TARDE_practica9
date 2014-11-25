module Prct06
  class Lista_enlazada
    
    include Enumerable
    attr_accessor :cabeza,:valor, :siguiente,:antes,:nodo1, :lista_reverse
    
    # create a Struct with :value and :next
    Nodo = Struct.new(:valor, :antes,:siguiente )
    def initialize()
   	@cabeza=nil
	#@ultelem=b
    end
 
    def push(preg)
       if @cabeza == nil
	 @nodo1=Nodo.new(preg,nil,nil)
	 @cabeza=@nodo1
	else
	  @nodo1=Nodo.new(preg,nil,nil)
	  @cabeza.antes=@nodo1
	  @nodo1.siguiente=@cabeza
	  @cabeza=@nodo1
	end  
    end
    
    def to_tex
    end
    
    def pop()
      if @cabeza== nil
	#puts "lista vacia"
      else
	@nodo1=@cabeza
	@cabeza=@cabeza.siguiente
	#@cabeza.antes=nil
	@nodo1.siguiente=nil
	a=@nodo1.valor
	#puts "sacando valor"
      end
    end
    
    def empty
      if @cabeza==nil
	a=true
      else 
	a=false 
      end
      a
    end
    
     def reverse
	@lista_reverse = Prct06::Lista_enlazada.new
	self.each_with_index do |n|
	  @lista_reverse.push(self.pop)
	end
	return @lista_reverse
     end
      
      
    def each
      if(@cabeza!=nil)
	  @aux =@cabeza
	  while( @aux!=nil )
	    yield @aux.valor
	    @aux=@aux.siguiente
	  end
      end
    
    end
end
end
    
#     def push_antes(base,nuevo)
#       if @cabeza== nil 
# 	@cabeza=nuevo
#       elsif base==nil 
# 	nuevo.siguiente = @cabeza
# 	@cabeza.antes = nuevo
# 	#@cabeza= nuevo
# 	#suponemos que nuevo anterio ya es nulo
#       else
# 	aux=@cabeza
# 	while aux.valor =! base.valor 
# 	 aux.siguiente = aux
# 	end  
# 	#aux2=@cabeza
# 	 aux2=aux.antes
# 	 aux.antes=nuevo.siguiente
# 	 aux2.siguiente = nuevo
# 	 nuevo.siguiente = aux
# 	 nuevo.antes = aux2
#       end
#     end 
#     def push_despues(base,nuevo)
#       if @cabeza== nil 
# 	  @cabeza=nuevo
#       elsif base==nil 
# 	nuevo.siguiente = @cabeza
# 	@cabeza.antes = nuevo
# 	#suponemos que nuevo anterio ya es nulo
#      else 
# 	  aux=@cabeza
# 	while aux.valor =! base.valor 
# 	 aux.siguiente = aux
# 	end  
# 	 aux2=aux.siguiente
# 	 aux.siguiente=nuevo
# 	 nuevo.siguiente=aux2
# 	 aux2.antes=nuevo
# 	 nuevo.antes=aux
#       end
#     end
#   def pop(nodo)
#       if @cabeza!=nil
# 	aux=@cabeza
# 	while aux.valor =! nodo.valor 
# 	 aux.siguiente = aux
# 	end 
# 	destruir =aux.valor
# 	aux2=nodo.antes
# 	aux3=nodo.siguiente
# 	aux2.antes =aux3
# 	aux3.antes=aux2
# 	destruir.to_s
#       else
# 	puts 'No habia nada en la lista enlazada'
# 	return nil
#       end
#     end
#     def pop_principio()
#       if @cabeza !=null
# 	aux=@cabeza
# 	@cabeza=@cabeza.siguiente
# 	@cabeza.antes=nil
# 	aux.siguiente=nil
# 	aux.valor
#       end
#     end  
#     


