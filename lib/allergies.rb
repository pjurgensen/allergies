def allergy_score(number)
  allergies = {128 => "cats", 64 => "pollen", 32 => "chocolate", 16 => "tomatoes", 8 => "strawberries", 4 => "shellfish", 2 => "peanuts", 1 => "eggs"}
  all_allergies = []
    allergies.each do |score, allergy|
      if number >= score
        all_allergies.push(allergy)
        number -= score
      end
    end
    "You are allergic to #{all_allergies[0..-2].join(", ")} and #{all_allergies[-1]}. Sorry :("
end

puts "What is your allergy score?"
input = gets.chomp.to_s

  if input.to_i.to_s == input
    input = input.to_i
    if input == 0
     puts "You are not allergic to anything. Yay!"
    else
      puts allergy_score(input)
    end
  else
    puts "Please enter a valid number."
  end
