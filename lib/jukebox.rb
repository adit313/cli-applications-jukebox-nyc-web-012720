# Add your code here

def help
  puts "I accept the following commands:"
  puts "- help : displays this help message"
  puts "- list : displays a list of songs you can play"
  puts "- play : lets you choose a song to play"
  puts "- exit : exits this program"
end

def list(songs)
  songs.each_with_index {|n, m| puts "#{m + 1}. #{n}"}
end

def play(songs)
  puts "Please enter a song name or number:"
  raw_input = gets.strip
  pp input
  pp input.to_i
  begin
  legal_integer = ((songs.length+1) >= Integer input)
    rescue 
      legal_integer = false
    end
    pp songs.include?(input) 
    pp legal_integer
  if (songs.include?(input) || legal_integer)
    begin
    puts "Playing #{songs[Integer input]}"
      rescue
    puts "Playing #{input}"
  end
  else
     puts "Invalid input, please try again" 
  end
end

def exit_jukebox
  puts "Goodbye"
end