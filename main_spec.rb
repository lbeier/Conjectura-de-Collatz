require './main'

describe Main do

	before(:each) do
    	@main = Main.new
  	end

	it 'should return nothing if value is null' do
		sequencia = @main.calculaMaiorSequenciaAte(nil)
		
		sequencia.should eq([])
	end

	it 'should return [1, 1] if value is 1' do
		sequencia = @main.calculaMaiorSequenciaAte(1)
		
		sequencia.should eq([1, 1])
	end

	it 'should return [2, 2] if value is 2' do
		sequencia = @main.calculaMaiorSequenciaAte(2)
		
		sequencia.should eq([2, 2])
	end

	it 'should return [3, 8] sequencie if value is 3' do
		sequencia = @main.calculaMaiorSequenciaAte(3)

		sequencia.should eq([3, 8])
	end

	it 'should return [3, 8] sequencie if value is 4' do
		sequencia = @main.calculaMaiorSequenciaAte(4)

		sequencia.should eq([3, 8])
	end

	it 'should return [7, 17] sequencie if value is 7' do
		sequencia = @main.calculaMaiorSequenciaAte(7)

		sequencia.should eq([7, 17])
	end
end