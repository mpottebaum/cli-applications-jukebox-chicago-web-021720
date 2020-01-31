def help
  puts "I accept the following commands:"
  puts "- help : displays this help message"
  puts "- list : displays a list of songs you can play"
  puts "- play : lets you choose a song to play"
  puts "- exit : exits this program"
end

def list(song_list)
  song_list.each_with_index do |title, index|
    song_number = index + 1
    puts "#{song_number}. #{title}"
  end
end

def play(song_list)
  puts "Please enter a song name or number:"
  user_input = gets.strip
  
  song_list.each_with_index do |title, index|
    if user_input == title || user_input.to_i == (index + 1)
      puts "Playing #{title}"
      return
    end
  end
  puts "Invalid input, please try again"
end

def exit_jukebox
  puts "Goodbye"
end

def run(song_list)
  puts "Please enter a command:"
  user_input = gets.strip
  binding.pry
  until user_input == "exit"
  end
  exit_jukebox
end