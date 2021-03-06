require_relative 'math_question'
require_relative 'player'

class Turn
    
    def initialize(player)
        @current_player = player
        puts "#{@current_player.name}: "
        @question = MathQuestion.new()
        @answer = @question.answer
        game
    end


    def game
        puts "What is the answer to #{@question.question}?"
        player_answer = gets.chomp
        if player_answer.to_i == @answer
            puts "#{@current_player.name} that is correct!" 
        else
            @current_player.lose_life
            puts "Not even close.  You now have #{@current_player.lives} lives."
        end
    end

end
        



