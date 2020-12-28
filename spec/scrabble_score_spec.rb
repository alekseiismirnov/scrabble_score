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

  it 'returns correct values for random 1 score letter' do 
    expect(scrabble_score(%w[A E I O U L N R S T].sample)).to eq(1)
  end 
  
  it 'returns correct values for random 2 score letter' do 
    expect(scrabble_score(%w[D G].sample)).to eq(2)
  end 
  
  it 'returns correct values for random 3 score letter' do 
    expect(scrabble_score(%w[B C M P].sample)).to eq(3)
  end 
 
end
