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

  it('returns "two hundred nineteen" when the number is 219') do
    input = Counter.new(219)
    expect(input.words).to(eq('two hundred nineteen'))
  end

  it('returns "four hundred twenty" when the number is 420') do
    input = Counter.new(420)
    expect(input.words).to(eq('four hundred twenty'))
  end

  it('returns "nine hundred ninety nine" when the number is 999') do
    input = Counter.new(999)
    expect(input.words).to(eq('nine hundred ninety nine'))
  end

  it('returns "one thousand" when the number is 1000') do
    input = Counter.new(1000)
    expect(input.words).to(eq('one thousand'))
  end

  it('returns "seven thousand, six hundred" when the number is 7600') do
    input = Counter.new(7600)
    expect(input.words).to(eq('seven thousand, six hundred'))
  end

  it('returns "six thousand, four hundred twenty" when the number is 6420') do
    input = Counter.new(6420)
    expect(input.words).to(eq('six thousand, four hundred twenty'))
  end

  it('returns "eight thousand, two hundred nineteen" when the number is 8219') do
    input = Counter.new(8219)
    expect(input.words).to(eq('eight thousand, two hundred nineteen'))
  end

  it('returns "four thousand, two hundred thirty eight" when the number is 4238') do
    input = Counter.new(4238)
    expect(input.words).to(eq('four thousand, two hundred thirty eight'))
  end
end
