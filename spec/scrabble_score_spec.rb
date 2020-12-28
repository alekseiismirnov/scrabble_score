require 'scrabble_score'
require 'rspec'

describe 'scrabble_score' do 
  it 'returns 1 for a' do
    expect(scrabble_score('a')).to eq(1)
  end
  
end
