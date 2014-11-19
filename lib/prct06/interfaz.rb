module Prct06

  class Interfaz
    attr_accessor :examen, :nota, :dato_usuario
  
    def initialize()
      @examen=Prct06::Examen.new
      @nota = 0
    end 
    
    def mostrar
      puts "Examen de LPP, Introduzca su Nombre y apellidos: "
      STDOUT.flush
      @dato_usuario = gets.chomp 
      
      puts "---------------------------------------------\n"
      puts "Tendra que elegir entre las opciones que se le facilite en cada una
      de las preguntas. Cada preguntas puntuaran con 2puntos.\n"
      aux = @examen.lista_enlazada
      while !aux.empty()
	
	ala = aux.pop()
	puts "#{ala.to_s}"
     
      #aux.each do |a|
	#puts "#{a.to_s}\n"
	puts "respuesta?: "
	STDOUT.flush
	respuesta = gets.chomp
	if a.op_correcta(respuesta)
	 puts "Respuesta correcta"
	  nota+=2
	else
	  puts "Respuesta incorrecta"
	end
      end
    end
    
    def resultado
      puts "Finalizado examen. Usuario: #{@dato_usuario}, calculando nota: \n"
      puts "Su nota es #{nota}\n"
      if nota>=5
	puts "Ha aprobado. Felicidades"
      else
	puts "Ha suspendido. Intentelo el proximo ano"
      end
      
    end
  end
  
end #module prct06
