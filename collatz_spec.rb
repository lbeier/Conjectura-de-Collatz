require './collatz'

describe Collatz do

	before(:each) do
    	@collatz = Collatz.new
  	end

	it 'should return nothing if value is null' do
		sequencia = @collatz.geraSequencia(nil)
		
		sequencia.should eq([])
	end

	it 'should return [1] if value is 1' do
		sequencia = @collatz.geraSequencia(1)
		
		sequencia.should eq([1])
	end

	it 'should return [1, 2] if value is 2' do
		sequencia = @collatz.geraSequencia(2)
		
		sequencia.should eq([2, 1])
	end

	it 'should return the correct sequencie if value is 13' do
		sequencia = @collatz.geraSequencia(13)
		sequenciaCorreta = [13, 40, 20, 10, 5, 16, 8, 4, 2, 1]
		
		sequencia.should eq(sequenciaCorreta)
	end
end