def draw_man(num)
  # where num = number of incorrect guesses/body parts to draw



if num == 0
  puts "------"
  puts "     |"

elsif num == 1
  puts "------"
  puts "     |"
  puts "     @"

elsif num == 2
  puts "------"
  puts "     |"
  puts "     @"
  puts '     |'

elsif num == 3
  puts "------"
  puts "     |"
  puts "     @"
  puts '    \|'

elsif num == 4
  puts "------"
  puts "     |"
  puts "     @"
  puts '    \|/'

elsif num == 5
  puts "------"
  puts "     |"
  puts "     @"
  puts '    \|/'
  puts "     | "

elsif num == 6
  puts "------"
  puts "     |"
  puts "     @"
  puts '    \|/'
  puts "     | "
  puts '    /  '

elsif num == 7
  puts "------"
  puts "     |"
  puts "     @"
  puts '    \|/'
  puts "     | "
  puts '    / \ '
end

end

f = File.new("english-dictionary.txt", "r")
words = f.read.chomp
f.close

random_word = words.split("\n")
random_word = random_word.sample.chomp
secret_word_array = random_word.split('')
num = 0

puts "Type start when ready to begin."

user_start = gets.chomp.downcase
if user_start != "start"
  exit
end

draw_man(0)
letters_guessed = [].sort
def display_guess_progress(secret_word_array, letters_guessed)

  secret_word_array.each do |x|
    if (letters_guessed.include? x) ==true
      print x
    elsif (letters_guessed.include? x) ==false
      print " _ "
    end
  end

  puts " Letters already guessed:"
  puts letters_guessed.sort.join(',')
end

while num <= 7
  display_guess_progress(secret_word_array, letters_guessed)

puts "Guess a letter"
letter = gets.chomp
letters_guessed.push(letter)

if (secret_word_array.include? letter) == false
  num = num + 1
end

draw_man(num)

if num == 7
  print "You lose! The word was: " ; print secret_word_array.join("")
  exit
  
  end
  end


