require_relative '../lib/trader'

describe 'soustrait chaque jour avec les suivants' do
  it 'test pour une intervalle des soustractions' do
    expect(substract([10, 9, 8])).to eq([-1, -2, -1])
    expect(substract([1, 2, 3, 4])).to eq([1, 2, 3, 1, 2, 1])
  end
end  

describe 'find the biggest profit' do
  it 'find the biggest profit in the exemple' do 
    expect(find_bigger([17, 3, 6, 9, 15, 8, 6, 1, 10])).to eq(12)
  end
end

describe 'give us the best days to sell and buy' do
  it 'gives un the fucking answer' do
    expect(find_best_days([17, 3, 6, 9, 15, 8, 6, 1, 10])).to eq('il vaut mieux acheter le 2ème jour à 3$ et vendre le 5ème jour à 15$ pour générer un profit de 12$')
  end
end