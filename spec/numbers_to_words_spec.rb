require('rspec')
require('pry')
require('numbers_to_words')

describe('words') do
  it('returns string "zero" when the number is 0') do
    input = Counter.new(0)
    expect(input.words).to(eq('zero'))
  end

  it('returns "two" when the number is 2') do
    input = Counter.new(2)
    expect(input.words).to(eq('two'))
  end

  it('returns "sixteen" when the number is 16') do
    input = Counter.new(16)
    expect(input.words).to(eq('sixteen'))
  end

  it('returns "thirty" when the number is 30') do
    input = Counter.new(30)
    expect(input.words).to(eq('thirty'))
  end

  it('returns "ninety nine" when the number is 99') do
    input = Counter.new(99)
    expect(input.words).to(eq('ninety nine'))
  end

  it('returns "one hundred" when the number is 100') do
    input = Counter.new(100)
    expect(input.words).to(eq('one hundred'))
  end

  it('returns "nine hundred ninety nine" when the number is 999') do
    input = Counter.new(999)
    expect(input.words).to(eq('nine hundred ninety nine'))
  end
end
