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

    four_digits = {
      1000 => 'one thousand', 2000 => 'two thousand', 3000 => 'three thousand',
      4000 => 'four thousand', 5000 => 'five thousand', 6000 => 'six thousand',
      7000 => 'seven thousand', 8000 => 'eight thousand',
      9000 => 'nine thousand'
    }

    new_number = @input

    if new_number.zero?
      single_digits.fetch(0)
    elsif Math.log10(new_number).to_i + 1 == 4
      split_number = new_number.to_s.split('')
      if (split_number.at(1) == '0') & (split_number.at(2) == '0') & (split_number.last == '0')
        thousands = split_number.first.to_i * 1000
        four_digits.fetch(thousands)
      elsif (split_number.at(1) != '0') & (split_number.at(2) != '1') & (split_number.last == '0')
        thousands = split_number.first.to_i * 1000
        hundreds = split_number.at(1).to_i * 100
        tens = split_number.at(2).to_i * 10
        four_digits.fetch(thousands) + ', ' + three_digits.fetch(hundreds) + ' ' + two_digits.fetch(tens)
      elsif (split_number.at(1) != '0') & (split_number.at(2) == '1') & (split_number.last != '0')
        thousands = split_number.first.to_i * 1000
        hundreds = split_number.at(1).to_i * 100
        tweens = split_number.at(2).to_i * 10 + split_number.last.to_i
        four_digits.fetch(thousands) + ', ' + three_digits.fetch(hundreds) + ' ' + ten_digits.fetch(tweens)
      end
    elsif Math.log10(new_number).to_i + 1 == 3
      split_number = new_number.to_s.split('')
      if (split_number.at(1) == '0') & (split_number.last == '0')
        hundreds = split_number.first.to_i * 100
        three_digits.fetch(hundreds)
      elsif split_number.last == '0'
        hundreds = split_number.first.to_i * 100
        tens = split_number.at(1).to_i * 10
        three_digits.fetch(hundreds) + ' ' + two_digits.fetch(tens)
      elsif (split_number.at(1) == '1') & (split_number.last != '0')
        hundreds = split_number.first.to_i * 100
        tweens = split_number.at(1).to_i * 10 + split_number.last.to_i
        three_digits.fetch(hundreds) + ' ' + ten_digits.fetch(tweens)
      elsif (split_number.at(1) != '1') & (split_number.last != '0')
        hundreds = split_number.first.to_i * 100
        tens = split_number.at(1).to_i * 10
        ones = split_number.last.to_i
        three_digits.fetch(hundreds) + ' ' + two_digits.fetch(tens) + ' ' + single_digits.fetch(ones)
      end
    elsif Math.log10(new_number).to_i + 1 == 2
      split_number = new_number.to_s.split('')
      if (split_number.first == '1') & (split_number.last != '0')
        ten_digits.fetch(new_number)
      elsif split_number.last == '0'
        two_digits.fetch(new_number)
      elsif (split_number.first != '1') & (split_number.last != '0')
        tens = split_number.first.to_i * 10
        ones = split_number.last.to_i
        two_digits.fetch(tens) + ' ' + single_digits.fetch(ones)
      end
    elsif Math.log10(new_number).to_i + 1 == 1
      single_digits.fetch(new_number)
    end
  end
end
