require 'scrabble_score'
require 'rspec'

describe 'scrabble_score' do 
  it 'returns 1 for a' do
    expect(scrabble_score('a')).to eq(1)
  end

  it 'returns 2 for d' do
    expect(scrabble_score('d')).to eq(2)
  end

  it 'returns correct values for upper case letters' do
    expect(scrabble_score('A')).to eq(1)
    expect(scrabble_score('D')).to eq(2)
  end

  # next scheme rather complicatet to debug, if we miss one letter
  it 'returns correct values for random 1 score letter' do 
    expect(scrabble_score(%w[A E I O U L N R S T].sample)).to eq(1)
  end 
  
  it 'returns correct values for random 2 score letter' do 
    expect(scrabble_score(%w[D G].sample)).to eq(2)
  end 
  
  it 'returns correct values for random 3 score letter' do 
    expect(scrabble_score(%w[B C M P].sample)).to eq(3)
  end 
 
  it 'returns correct values for random 4 score letter' do 
    expect(scrabble_score(%w[F H V W Y].sample)).to eq(4)
  end

  it 'returns correct values for k' do 
    expect(scrabble_score('K')).to eq(5)
  end 

  it 'returns correct values for random 8 score letter' do 
    expect(scrabble_score(%w[J X].sample)).to eq(8)
  end

  it 'returns correct values for random 10 score letter' do 
    expect(scrabble_score(%w[Q Z].sample)).to eq(10)
  end 
end
