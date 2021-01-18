    require_relative("./player.rb")
    require_relative("./board.rb")
    require "colorize"
    
    class TicTacToe
    # initialize
    attr_accessor :board
    def initialize(player1,player2,no_of_players)
        # set up the board
        @board = Board.new
        @no_of_players= no_of_players
        # set up the players
        @player_x = Player.new(player1, :x, @board)
        @player_o = Player.new(player2, :o, @board)

        # assign the starting player
        @current_player = @player_x
    end

    # play
    def play
        @current_player = @player_x
        # loop infinitely
        loop do
            # call the board rendering method
            @board.render
            if @no_of_players==1
             @current_player.put_coordinates
            elsif @no_of_players==2
              # ask for coordinates from the current player
              @current_player.get_coordinates
            end 
            # check if game is over
            break if check_game_over

            # switch players
            switch_players
        end
    end

    # check_game_over?
    def check_game_over
        # check for victory
        # check for draw
        check_victory || check_draw
    end

    # check_victory?
    def check_victory
        # IF Board says current player's piece has
        # a winning_combination?
        if @board.winning_combination?(@current_player.piece)
            # then output a victory message
            puts "Congratulations #{@current_player.name}, you win!"
            if @current_player == @player_x
                @player_x.score += 1
            else 
                @player_o.score += 1 
            end        
            puts "score board"
            puts "#{@player_x.name}"+ ": #{@player_x.score}".blue
            puts "#{@player_o.name}"+": #{@player_o.score}".blue

            true
        else
            false
        end
    end

    # check_draw?
    def check_draw
        # If Board says we've filled up 
        if @board.full?
            # display draw message
            puts "sigh, its drawn..."
            true
        else
            false
        end
    end

    # switch_players
    def switch_players
        if @current_player == @player_x
            @current_player = @player_o
        else
            @current_player = @player_x
        end
    end

end




