require './collatz'

class Main

	def calculaMaiorSequenciaAte(valor)
		return [] if valor.nil?
		
		maiorSequencia = 0
		numeroDeMaiorSequencia = 0

		for num in (1 .. valor)
			sequencia = Collatz.new.geraSequencia(num)
			tamanhoDaSequencia = sequencia.length

			if tamanhoDaSequencia > maiorSequencia
				numeroDeMaiorSequencia = num
				maiorSequencia = tamanhoDaSequencia
			end
		end

		[numeroDeMaiorSequencia, maiorSequencia]
	end
end