require_relative '../lib/cryptofolies'

describe 'test with one letter' do
  it 'replace one letter' do
    expect(ceasar_sypher('a', 1)).to eq('b')
    expect(ceasar_sypher('c', 2)).to eq('e')
    expect(ceasar_sypher('z', 1)).to eq('a')
  end
  it 'verify that the key is an integer between 0 and 26' do
    expect(ceasar_sypher('a', 'c')).to eq('the key MUST be a number between 0 and 26')
    expect(ceasar_sypher('a', 28)).to eq('the key MUST be a number between 0 and 26')
    expect(ceasar_sypher('a', -1)).to eq('the key MUST be a number between 0 and 26')
  end
end

describe 'test with one word' do
  it 'replace all the letter of a word' do 
    expect(ceasar_sypher('abcd', 1)).to eq('bcde')
    expect(ceasar_sypher('yzab', 2)).to eq('abcd')
  end
  it 'replace all the letters of a word even if maj' do
    expect(ceasar_sypher('ABCD', 1)).to eq('BCDE')
    expect(ceasar_sypher('YZAB', 2)).to eq('ABCD')
  end
end

describe 'test with a sence' do
  it 'replace the letters of the sentence but not the spaces' do
    expect(ceasar_sypher('What a string!', 5)).to eq('Bmfy f xywnsl!')
  end
end
