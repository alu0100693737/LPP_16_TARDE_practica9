module prct06

  class Interfaz
    attr_accessor :examen, :nota
  
    def initialize()
      @examen=Prct06::examen.new
      @nota = 0
    end 
    
    def mostrar
      puts "Examen de LPP, Introduzca su Nombre y apellidos: "
      STDOUT.flush
      dato_usuario = gets.chomp
      
      puts "---------------------------------------------\n"
      puts "Tendrá que elegir entre las opciones que se le facilite en cada una
      de las preguntas. Cada preguntas puntuarán con 2puntos.\n"
      aux = @examen
      aux.each do |a|
	puts "#{a.to_s}\n"
	puts "¿Respuesta?: "
	STDOUT.flush
	respuesta = gets.chomp
	if q.op_correcta(respuesta)
	 puts "Respuesta correcta"
	  nota+=2
	else
	  puts "Respuesta incorrecta"
	end
      end
      
      puts "Finalizado examen. Usuario: #{dato_usuario}, calculando nota: \n"
      puts "Su nota es #{nota}\n"
      if nota>=5
	puts "Ha aprobado. Felicidades"
      else
	puts "Ha suspendido. Intentelo el proximo año"
      end
      
    end
  end
  
end #module prct06
