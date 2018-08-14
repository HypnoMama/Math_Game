require_relative 'player.rb'
require_relative 'math_question'
require_relative 'turn'

class Game

    def initialize()
        @p1 = player1
        @p2 = player2
        current_player_turn
        game_over

    end

    def player1
        puts "Player 1, what is your name?"
        p1_name = gets.chomp
        p1 = Player.new(p1_name)
        # puts "#{p1.name} has #{p1.lives} lives"
    end

    def player2
        puts "Player 2, what is your name?"
        p2_name = gets.chomp
        p2 = Player.new(p2_name)
        # puts "#{p2.name} has #{p2.lives} lives"
    end


    def current_player_turn
        
        current_player = @p1
        while @p1.lives > 0 && @p2.lives > 0
            Turn.new(current_player)
            puts "#{@p1.name}: #{@p1.lives}/3 vs #{@p2.name}: #{@p2.lives}/3"
    
            current_player == @p1 ? current_player = @p2 : current_player = @p1
        end    
    end

    def game_over
        @p1.lives > 0 ? winner = @p1 : winner = @p2
        puts "#{winner.name} wins with #{winner.lives}/3 left!"
        puts "--------Game Over-----------"
        puts "Goodbye!"
    end
end

