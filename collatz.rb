class Collatz

	def initialize
		@sequencia = []
	end

	def geraSequencia(valor)
		return @sequencia if valor.nil?
		return @sequencia << 1 if valor == 1

		adicionaValorASequencia(valor)
	end

private
	def adicionaValorASequencia(valor)
		@sequencia << valor

		valorAtual = @sequencia.last
		proximoValor = encontraProximoValor(valorAtual)

		geraSequencia(proximoValor)
	end

	def encontraProximoValor(n)
		n % 2 == 0? proximoValorPar(n) : proximoValorImpar(n)
	end
	
	def proximoValorPar(n)
		n / 2
	end

	def proximoValorImpar(n)
		3 * n + 1
	end
end