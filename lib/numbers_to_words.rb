require('pry')

class Counter
  def initialize(input)
    @input = input
  end

  def words
    single_digits = {
      0 => 'zero', 1 => 'one', 2 => 'two', 3 => 'three', 4 => 'four',
      5 => 'five', 6 => 'six', 7 => 'seven', 8 => 'eight', 9 => 'nine'
    }

    ten_digits = {
      11 => 'eleven', 12 => 'twelve', 13 => 'thirteen', 14 => 'fourteen',
      15 => 'fifteen', 16 => 'sixteen', 17 => 'seventeen', 18 => 'eighteen',
      19 => 'nineteen'
    }

    two_digits = {
      10 => 'ten', 20 => 'twenty', 30 => 'thirty', 40 => 'forty', 50 => 'fifty',
      60 => 'sixty', 70 => 'seventy', 80 => 'eighty', 90 => 'ninety'
    }

    three_digits = {
      100 => 'one hundred', 200 => 'two hundred', 300 => 'three hundred',
      400 => 'four hundred', 500 => 'five hundred', 600 => 'six hundred',
      700 => 'seven hundred', 800 => 'eight hundred', 900 => 'nine hundred'
    }

    new_number = @input

    if new_number.zero?
      single_digits.fetch(0)
    elsif Math.log10(new_number).to_i + 1 == 1
      single_digits.fetch(new_number)
    elsif Math.log10(new_number).to_i + 1 == 2
      # split number into integer array
      split_number = new_number.to_s.split('')
      # first check if the number is in the teens
      if (split_number.first == '1') & (split_number.last != '0')
        ten_digits.fetch(new_number)
      elsif split_number.last == '0'
        # check if the number is in the ten's (10, 20, 30...90)
        two_digits.fetch(new_number)
      elsif (split_number.first != '1') & (split_number.last != '0')
        # split first and last number to combine 'two_digits' + 'single_digits'
        tens = split_number.first.to_i * 10
        ones = split_number.last.to_i
        two_digits.fetch(tens) + ' ' + single_digits.fetch(ones)
      end
    end




  end
end
