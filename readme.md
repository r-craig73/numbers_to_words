# numbers_to_words

## GitHub repository: https://github.com/r-craig73/number_to_words

#### By Ron Craig (https://github.com/r-craig73) & Kimberly Huynh (https://github.com/kihuynh)

## Description
#### An Epicodus lesson 02/06/2018: Create a Ruby method on that takes an integer and returns the number's word version.
#### Some rules...
1. Do not define methods in main.
2. The logic should include custom classes with instance methods.
3. All methods should be called on instances of a class.

#### Scrabble Score Case Specs
1. The method returns the string 'zero' when the number is 0.
  * input: input = Counter.new(0)
  * output: expect(input.words).to(eq('zero'))
2. The method returns the string 'two' when the number is 2.
  * input: input = Counter.new(2)
  * output: expect(input.words).to(eq('two'))
3. The method returns the string 'sixteen' when the number is 16.
  * input: input = Counter.new(16)
  * output: expect(input.words).to(eq('sixteen'))
4. The method returns the string 'thirty' when the number is 30.
  * input: input = Counter.new(30)
  * output: expect(input.words).to(eq('thirty'))
5. The method returns the string 'ninety nine' when the number is 99.
  * input: input = Counter.new(99)
  * output: expect(input.words).to(eq('ninety nine'))
6. The method returns the string 'one hundred' when the number is 100.
  * input: input = Counter.new(100)
  * output: expect(input.words).to(eq('one hundred'))
7. The method returns the string 'two hundred nineteen' when the number is 219.
  * input: input = Counter.new(219)
  * output: expect(input.words).to(eq('two hundred nineteen'))
8. The method returns the string 'four hundred twenty' when the number is 420.
  * input: input = Counter.new(420)
  * output: expect(input.words).to(eq('four hundred twenty'))
9. The method returns the string 'nine hundred ninety nine' when the number is 999.
  * input: input = Counter.new(999)
  * output: expect(input.words).to(eq('nine hundred ninety nine))

### Rspec results
![alt-text](img/rspec-screenshot.png "Screenshot Rspec results, 9 specs passing")

### Using Visualize Ruby (https://visualize-ruby.herokuapp.com/), here are the screenshots for different digital branches.
#### 3 Digits Branch
![alt-text](img/3-digits-branch.png "3 Digits Branch")

#### 2 Digits & 1 Digit Branch
![alt-text](img/2-digits-and-1-digit-branches.png "2 Digits and 1 Digit Branch")


## Setup/Installation Requirements
### Clone repository.
### Install Ruby and Gems
* `$ gem install rspec`
* `$ gem install pry`
* `$ bundle install`

### Run rspec in the terminal's home directory path
* `numbers_to_words $ rspec`

## Technologies Used
* Ruby
* Ruby script
* Ruby Gems

## Support and contact details
_Please contact ron.craig@comcast.net with questions._

## MIT License