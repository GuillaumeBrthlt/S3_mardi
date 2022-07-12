require_relative '../lib/multiple_3_5'

describe 'my number is a multiple of 3 or 5' do
  it 'vérify with numbers that should return true' do
    expect(is_multiple_of_3_or_5(3)).to eq(true)
    expect(is_multiple_of_3_or_5(5)).to eq(true)
    expect(is_multiple_of_3_or_5(45)).to eq(true)
    expect(is_multiple_of_3_or_5(51)).to eq(true)
  end
  it 'vérify with numbers that should return true' do
    expect(is_multiple_of_3_or_5(2)).to eq(false)
    expect(is_multiple_of_3_or_5(7)).to eq(false)
    expect(is_multiple_of_3_or_5(64)).to eq(false)
  end
end

describe 'my number is an integer that sum the multiples of 3 and 5' do
  it 'verify it fucks you if it is not an integer' do
    expect(sum_of_3_and_5_multiples('choice')).to eq('Yo ! Je ne prends que les entiers naturels. TG')
    expect(sum_of_3_and_5_multiples(-1)).to eq('Yo ! Je ne prends que les entiers naturels. TG')
    expect(sum_of_3_and_5_multiples(1.23)).to eq('Yo ! Je ne prends que les entiers naturels. TG')
  end
  it 'verify the final result' do
    expect(sum_of_3_and_5_multiples(10)).to eq(23)
    expect(sum_of_3_and_5_multiples(11)).to eq(33)
    expect(sum_of_3_and_5_multiples(0)).to eq(0)
    expect(sum_of_3_and_5_multiples(0)).to eq(0)
  end
end
