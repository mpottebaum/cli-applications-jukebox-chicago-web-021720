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
  song_list.detect do |
end