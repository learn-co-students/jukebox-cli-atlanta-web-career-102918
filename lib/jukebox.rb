# Add your code here

# def say_hello(name)
#     "Hi #{name}!"
# end

# puts "Enter your name: "
# users_name = gets.strip

# puts say_hello(users_name)

# ----

# Jukebox code: 

def help
    puts "I accept the following commands:"
    puts "- help : displays this help message"
    puts "- list : displays a list of songs you can play"
    puts "- play : lets you choose a song to play"
    puts "- exit : exits this program"
end

def list(songs)
    songs.each_with_index do |song, index|
        puts "#{index + 1}. #{song}"
    end
end

def play(songs)
    puts "Please enter a song name or number:"
    song_name_or_number = gets.strip

    valid_song_name = songs.any? {|song| song == song_name_or_number}
    valid_song_number = (1..songs.count).to_a.any? {|num| num == song_name_or_number.to_i}

    if (valid_song_name || valid_song_number) 
        valid_song_number ? (
            song = songs[song_name_or_number.to_i - 1]
            puts "Playing #{song}"
        ) : (
            puts "Playing #{song_name_or_number}"
        )
    else
        puts "Invalid input, please try again."
    end
end

def exit_jukebox
    puts "Goodbye"
end

def run(songs)
    # help
    command = ""
    while command
        puts "Please enter a command:"
        command = gets.strip
        case command
        when "help"
            help
        when "list"
            list(songs)
        when "play"
            list(songs)
            play(songs)
        when "exit"
            exit_jukebox
            break
        else
            help
        end
    end
end