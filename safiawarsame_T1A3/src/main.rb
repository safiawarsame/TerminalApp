require "tty-prompt"
require_relative("./player.rb")
require_relative("./board.rb")
require_relative("./tictactoe.rb")
require "colorize"
puts "welcome to TicTacToe".red

$prompt = TTY::Prompt.new

if ARGV.length > 0
    name1 = ARGV[0]
elsif ARGV.length ==2
    name2 = ARGV[1]   
end 
if !name1
 puts "please, enter the first player's name".blue
 name1=STDIN.gets.strip 
end
if!name2
 puts "please, enter the second player's name".blue
 name2=STDIN.gets.strip 

answer="replay"
while(answer!="Exit")
     t = TicTacToe.new(name1,name2)
     t.play
    end
answer=$prompt.select("Do you want to play another game?",["replay","Exit"])
end