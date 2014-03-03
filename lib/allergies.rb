def allergy_score(number)
  allergies = {1 => "eggs", 2 => "peanuts", 4 => "shellfish", 8 => "strawberries", 16 => "tomatoes", 32 => "chocolate", 64 => "pollen", 128 => "cats"}
  number_array = [128, 64, 32, 16, 8, 4, 2, 1]
  x = 0
  all_allergies = []
  number = number.to_s
  if number.to_i.to_s == number
    number = number.to_i
    if number == 0
      puts "You are not allergic to anything. Yay!"
    else
      while number > 0 && number <= 255 do
          if number - number_array[x] >= 0
            all_allergies.push(allergies[number_array[x]])
            number = number - number_array[x]
          end
          x += 1
      end
    end
    all_allergies
  else
    puts "Please enter a valid number"
  end
end

puts allergy_score("12")
