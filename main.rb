require './collatz'

class Main

	def initialize
		@maiorSequencia = 0
		@numeroDeMaiorSequencia = 0
	end

	def calculaMaiorSequenciaAte(valor)
		return [] if valor.nil?			

		for num in (1 .. valor)
			sequencia = Collatz.new.geraSequencia(num)

			modificaSequencia(sequencia, num)
		end

		[@numeroDeMaiorSequencia, @maiorSequencia]
	end

	private
	def modificaSequencia(sequencia, num)
		tamanhoDaSequencia = sequencia.length

		if tamanhoDaSequencia > @maiorSequencia
			@numeroDeMaiorSequencia = num
			@maiorSequencia = tamanhoDaSequencia
		end		
	end
end