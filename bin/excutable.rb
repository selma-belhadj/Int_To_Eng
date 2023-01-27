require_relative '../lib/int_to_eng'
# require_relative '../lib/optimised2'



n=0
while n != -1
    puts "Enter a number: "
    num = gets.chomp.to_i
    if num < 0 || num > 100000000000
        puts "Please enter a number between 0 and 999,999,999,999"
    else
        puts int_to_eng(num)
    end
end
