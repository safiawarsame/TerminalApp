require "tty-prompt"
require_relative("./player.rb")
require_relative("./board.rb")
require_relative("./tictactoe.rb")
require "colorize"
puts "welcome to TicTacToe".red

$prompt = TTY::Prompt.new

if ARGV.length == 2 
    name1 = ARGV[0]
    name2 = ARGV[1]
else 
    puts "please, enter the first player's name".blue
name1=gets.strip 
puts "please, enter the second player's name".blue
name2=gets.strip 
end
answer="replay"
while(answer!="Exit")
 
t = TicTacToe.new(name1,name2)
t.play

answer=$prompt.select("Do you want to play another game?",["replay","Exit"])
end
