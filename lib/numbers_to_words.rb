class Counter

  def initialize(input)
    @input = input
  end

  def words
    words = {0 => "zero", 1 => "one", 2 => "two", 3 => "three", 4 => "four", 5 => "five", 6 => "six", 7 => "seven", 8 => "eight", 9 => "nine"}

    # output = ""
    new_number = @input
    x = 0
    if new_number == 0
        words.fetch(0)
    # else
    #   low_numbers = (1..9)
    #   low_numbers.each() do |number|
    #     if new_number == low_numbers
    #     words.fetch(number)
    #     end
    end

  end
#binding.pry
end
