require('rspec')
require('pry')
require('numbers_to_words')

describe('#numbers_to_words') do
  it("returns something that should work") do
    input = Counter.new(0)
    expect(input.words()).to(eq("zero"))
  end

end
