
def calc_in_words(word_problem)
  operators = []
  digits = []
  result = 0

  word_problem.split(' ').each do |word|
    if word[0] == '0'
      digits.push 0
    elsif word.to_i != 0
      digits.push word.to_i
    elsif word == "plus"
      operators.push "+"
    elsif word == "times" || word == "multiplied"
      operators.push "*"
    elsif word == "minus"
      operators.push "-"
    elsif word == "divided"
      operators.push "/"
    end
  end

  operators.each do |operator|
    if operator == "+"
      result += digits.shift + digits.shift
    elsif operator == "*"
      result += digits.shift * digits.shift
    elsif operator == '-'
      result += digits.shift - digits.shift
    elsif operator == '/'
      result += digits.shift / digits.shift
    end
  end

  result
end


