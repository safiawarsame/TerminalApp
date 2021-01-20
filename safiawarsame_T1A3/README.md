**GitHub Repository Link:**
- https://github.com/safiawarsame/TerminalApp

**Trello Link**
- https://trello.com/b/A3wfwEcQ/terminal-app 

**Software Development Plan**

- **What the Application will do:**
- TicTacToe is a well-known online game that is easy and fun to play.

- **Target Audience:**
- TicTacToe is a very standard game that has no age limit which makes the demographic very wide. Anyone can play from kids to millennials and also anyone who has access to my GitHub link.
- **How To Use the App:**
- To play the game you have to go on terminal and run "ruby manin.rb" 

**Features of the App**

- **1- Welcoming message**
- The welcoming messsage is the first thing that will appear in the application before playing the game begins.

- **2- Choose an option**

- TicTacToe will give you two option. 1 player or 2 players.
- 1 player would have given you an option to play with an API but currently there an error in it.
- 2 players option allows you to play with players. It also allows you to imput player 1 and 2's name. 

- **3- ScoreBoard**
- The scoredboard was created so it can keep count of how many times you've won each game. At the end of each game, there will be a score board.If the player/players keeps playing, the scoreboard will keep accumulating. If the player/players exit and then start a new game the score board will start from 0.

- **Replay/Exit**
Once the game is finish, it gives two options. 
- Option one, you either replay the game which it will then gives you another option. 1 player or 2 players.
Option 2, you exit the game .


**How the user will find out how to use the app**
the app os created in a very simoly way. it has instructions and wont be hard to follow
**How user will interact and use each feature**

1- the welcoming message is the first thing  that pops up as soon as you run ruby main.rb 

2- the game will require you to insert player 1 ans player 2 name 

3- once the game is finish ot will give you 2 options, either play a new game or exit  

**Data Flow Diagram**
![flow diagram](./docs/flowdiagram.png)

**test runs**

- if ARGV.length > 0
    name1 = ARGV[0]
- elsif ARGV.length ==2
    name2 = ARGV[1]   
end 
- if !name1
 puts "please, enter the first player's name".blue
 name1=STDIN.gets.strip 
end
- if !name2
 puts "please, enter the second player's name".blue
 name2=STDIN.gets.strip 
 end
