def is_multiple_of_3_or_5(current_number) # will verify if it's a number multiple of 5 or 3
  current_number % 3 == 0 || current_number % 5 == 0
end

def sum_of_3_and_5_multiples(final_number)
  unless final_number.is_a? Integer 
    'Yo ! Je ne prends que les entiers naturels. TG'
  else
    if final_number >= 0
      list_of_multiples = []
      (0..(final_number - 1)).each do |i|
        is_multiple_of_3_or_5(i) == true ? list_of_multiples.push(i) : next
      end
      list_of_multiples.sum
    else
      'Yo ! Je ne prends que les entiers naturels. TG'
    end
  end
end
