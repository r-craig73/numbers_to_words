require('rspec')
require('pry')
require('numbers_to_words')

describe('#numbers_to_words') do
  it("returns 'zero' when the number is 0") do
    input = Counter.new(0)
    expect(input.words()).to(eq("zero"))
  end
  # it("returns 'two' when the number is 2") do
  #   input = Counter.new(2)
  #   expect(input.words()).to(eq("two"))
  # end
end
