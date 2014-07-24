require ('rspec')
require ('calc_in_words')

describe :calc_in_words do
  it 'gives the result of addition in words' do
    expect(calc_in_words("What is 5 plus 3?")).to eq(8)
  end

  it 'returns the result of multiplication when passed "multiplied by" / "times"' do
    expect(calc_in_words("What is 5 times 3?")).to eq(15)
  end

  it 'returns the result of subtraction when passed "minus"' do
    expect(calc_in_words("What is 5 minus 3?")).to eq(2)
  end

  it 'returns the result of division when passed "divided by"' do
    expect(calc_in_words("What is 6 divided by 2?")).to eq(3)
  end

end
