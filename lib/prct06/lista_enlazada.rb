module Prct06
  class Lista_enlazada
    
    attr_accessor :cabeza, :ultelem
    
    # create a Struct with :value and :next
    
    def initialize(cabeza = nil, ultelem = nil)
   	@cabeza=cabeza
	@ultelem=ultelem
    end
    
    def push(args)
      array=[]
      array.unshift << args
    end 
    
    def pop()
      array.shift >> args
    end
  end
end
    
