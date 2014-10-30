module Prct06
  class Lista_enlazada
    
    attr_accessor :cabeza, :ultelem
    
    # create a Struct with :value and :next
    
    def initialize(a=nil, b=nil)
   	@cabeza=a
	@ultelem=b
    end
    
    def push(args)
      array=[]
      array.unshift << args
    end 
    
    def pop()
      array.shift >> args
    end
    
     def to_tex
    end
    
  end
end
    
