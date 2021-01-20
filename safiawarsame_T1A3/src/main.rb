require "tty-prompt"
require_relative("./player.rb")
require_relative("./board.rb")
require_relative("./tictactoe.rb")
require "colorize"
puts "welcome to TicTacToe".red
end
$prompt = TTY::Prompt.new

if ARGV.length > 0
    name1 = ARGV[0]
elsif ARGV.length ==2
    name2 = ARGV[1]   
end 

answer="replay"
while(answer!="Exit")
    answer=$prompt.select("Choose an options?",["1 player","2 players","Exit"])
    if answer == "1 player"
      players_no=1
      puts "please, enter your name".blue   
      name1=gets.strip
      t = TicTacToe.new(name1,"ai",players_no)
      t.play
    elsif answer == "2 players"  
     players_no=2  
     puts "please, enter the first player's name".blue
     name1=gets.strip 
     puts "please, enter the second player's name".blue
     name2=gets.strip 
     t = TicTacToe.new(name1,name2,players_no)
     t.play
    end
answer=$prompt.select("Do you want to play another game?",["replay","Exit"])
end
