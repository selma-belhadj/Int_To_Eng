# frozen_string_literal: true

def int_to_eng(number)
  ones = %w[zero one two three four five six seven eight nine]
  tens = ['', '', 'twenty', 'thirty', 'forty', 'fifty', 'sixty', 'seventy', 'eighty', 'ninety']
  teens = %w[ten eleven twelve thirteen fourteen fifteen sixteen seventeen eighteen
             nineteen]
  if !number.is_a?(Integer) || number.negative? || (number > 100_000_000_000) # 0-999,999,999,999
    puts 'Please enter a number between 0 and 999,999,999,999'
    return nil # invalid number, return nothing
  end
  if number < 10 # 0-9
    ones[number]
  elsif number < 20 # 10-19
    teens[number - 10]
  elsif number < 100 # 20-99y
    if (number % 10).zero?
      (tens[number / 10])
    else
      "#{tens[number / 10]}-#{ones[number % 10]}".strip
    end
  elsif number < 1000 # 100-999
    if (number % 100).zero?
      "#{ones[number / 100]} hundred"
    else
      "#{ones[number / 100]} hundred #{int_to_eng(number % 100)}".strip
    end
  elsif number < 10_000 # 1000-9999 -----
    if (number % 1000).zero? # 1000 2000 9000
      "#{ones[number / 1000]} thousand"
    else
      "#{ones[number / 1000]} thousand #{int_to_eng(number % 1000)}".strip
    end
  elsif number < 100_000 # 10000-99999 -----
    if (number % 10_000).zero?   # 10000 20000 90000
      "#{int_to_eng(number / 1000)} thousand"
    elsif (number % 1000).zero?  # 11000 22000 99000
      "#{int_to_eng(number / 1000)} thousand"
    else
      "#{int_to_eng(number / 1000)} thousand #{int_to_eng(number % 1000)}".strip
    end
  elsif number < 1_000_000
    if (number % 100_000).zero?
      "#{int_to_eng(number / 1000)} thousand"
    else
      "#{int_to_eng(number / 1000)} thousand #{int_to_eng(number % 1000)}".strip
    end
  elsif number < 10_000_000
    if (number % 1_000_000).zero?
      "#{int_to_eng(number / 1_000_000)} million"
    else
      "#{int_to_eng(number / 1_000_000)} million #{int_to_eng(number % 1_000_000)}".strip
    end
  elsif number < 100_000_000 
    if (number % 10_000_000).zero? # 10_000_000 20_000_000 90_000_000
      "#{int_to_eng(number / 1_000_000)} million"
    else 
      "#{int_to_eng(number / 1_000_000)} million #{int_to_eng(number % 1_000_000)}".strip
    end
  elsif number < 1_000_000_000
    if (number % 100_000_000).zero? # 100_000_000 200_000_000 900_000_000
      "#{int_to_eng(number / 1_000_000)} million"
    else # 100_000_001 200_000_001 906_030_501 234_567_890
      "#{int_to_eng(number / 1_000_000)} million #{int_to_eng(number % 1_000_000)}".strip
    end
  elsif number < 10_000_000_000 # 1_234_567_890
    if (number % 1_000_000_000).zero? # 1_000_000_000 2_000_000_000 9_000_000_000
      "#{int_to_eng(number / 1_000_000_000)} billion"
    else
      "#{int_to_eng(number / 1_000_000_000)} billion #{int_to_eng(number % 1_000_000_000)}".strip
    end
  elsif number < 100_000_000_000
    if (number % 10_000_000_000).zero? # 10_000_000_000 20_000_000_000 90_000_000_000
      "#{int_to_eng(number / 1_000_000_000)} billion"
    else # 13_234_567_890
      "#{int_to_eng(number / 1_000_000_000)} billion #{int_to_eng(number % 1_000_000_000)}".strip
    end
  end
end
