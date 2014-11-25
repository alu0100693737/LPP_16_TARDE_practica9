module Prct06
    class Interfaz
	attr_accessor :examen, :lista, :correctas, :incorrectas, :opcion_marcadas_usuario
	def initialize(lista)
	
	  @examen = Prct06::Examen.new(lista)
	  
	  @opcion_marcadas_usuario = []
	  
	  @correctas=0
	  @incorrectas=0
	end
	
	def calcular_nota(respuestas, usuario)
	    aux = @examen.lista_enlazada.cabeza
	    cont = 0
	    @resp_usuario = []
	    @resp_usuario = respuestas[usuario]
	    while (aux != nil)
		aux.valor.to_s
		#puts "#{aux.valor.to_s}"
		#puts "#{respuestas[cont]}"
		#puts "*************************"
		if (@resp_usuario[cont] == aux.valor.op_correcta)
		    @correctas = @correctas+2
		else
		    @incorrectas=@incorrectas+2
		end
		aux= aux.siguiente
		cont = cont +1
	    end
	    if (@correctas !=0 || @incorrectas !=0)
		return true
	    else
		return false
	    end
	end #calcular_nota
	
	def mostrar_resultado
	  puts "\nSu nota es #{@correctas}\n"
	  if (@correctas> @incorrectas)
	      puts "Ha aprobado. Felicidades"
	      return true
	  else
	      puts "Ha suspendido. Intentelo de nuevo"
	      return false
	  end
	  
	  @correctas=0
	  @incorrectas=0
	end
    end
end


# module Prct06
# 
#   class Interfaz
#     attr_accessor :examen, :nota, :dato_usuario
#   
#     def initialize()
#       @examen=Prct06::Examen.new
#       #examen.lista_enlazada
#       #examen.opcion_marcada
#       
#       @nota = 0
#     end 
#     
#     def mostrar
#       puts "Examen de LPP, Introduzca su Nombre y apellidos: "
#       STDOUT.flush
#       @dato_usuario = gets.chomp 
#       
#       puts "---------------------------------------------\n"
#       puts "Tendra que elegir entre las opciones que se le facilite en cada una
#       de las preguntas. Cada preguntas puntuaran con 2puntos.\n"
#       aux = @examen.lista_enlazada
#       while !aux.empty()
# 	
# 	ala = aux.pop()
# 	puts "#{ala.to_s}"
#      
#       #aux.each do |a|
# 	#puts "#{a.to_s}\n"
# 	puts "respuesta?: "
# 	STDOUT.flush
# 	respuesta = gets.chomp
# 	if a.op_correcta(respuesta)
# 	 puts "Respuesta correcta"
# 	  nota+=2
# 	else
# 	  puts "Respuesta incorrecta"
# 	end
#       end
#     end
#     
#     def resultado
#       puts "Finalizado examen. Usuario: #{@dato_usuario}, calculando nota: \n"
#       puts "Su nota es #{nota}\n"
#       if nota>=5
# 	puts "Ha aprobado. Felicidades"
#       else
# 	puts "Ha suspendido. Intentelo el proximo ano"
#       end
#       
#     end
#   end
#   
# end #module prct06
