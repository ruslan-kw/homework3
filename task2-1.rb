class Brackets
  def initialize(string)
    @string = string
  end

  def valid?
    stack = []
    brackets = { "{" => "}", "[" => "]", "<" => ">", "(" => ")"}
    @string.each_char do |chr|
      stack << chr if brackets.key?(chr)
      return false if brackets.key(chr) && brackets.key(chr) != stack.pop
    end
    stack.empty?
  end

end

p Brackets.new('{(})').valid?   # => false
p Brackets.new('{{[]').valid?   # => false
p Brackets.new('{[()]}').valid? # => true
p Brackets.new('<<>>').valid? # => true