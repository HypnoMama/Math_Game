require_relative 'player.rb'
require_relative 'math_question'
require_relative 'turn'





    puts "Player 1, what is your name?"
    p1_name = gets.chomp
    p1 = Player.new(p1_name)
    puts "#{p1.name} has #{p1.lives} lives"
    


    puts "Player 2, what is your name?"
    p2_name = gets.chomp
    p2 = Player.new(p2_name)
    puts "#{p2.name} has #{p2.lives} lives"

    
    current_player = p1


    while p1.lives > 0 && p2.lives > 0

            Turn.new(current_player)
            puts "P1: #{p1.lives}/3 vs PS: #{p2.lives}/3"
    
            current_player == p1 ? current_player = p2 : current_player = p1

    end    
    #once someone's lives are 0 we break out of while loop and say
    # sorry {player who lost} you have no lives left.  Game over goodbye

    puts "Game Over"

        

    # first_question = MathQuestion.new()
    # the_question = first_question.create_question
    # the_answer = first_question.correct_answer(the_question)
    # puts "What is the answer to #{the_question}"
    # player_answer = gets.chomp
    # if player_answer.to_i == the_answer
    #     puts "Correct!" 
    # else
    #     p1.lose_life
    #     puts "Sorry, that was incorrect.  You now have #{p1.lives} lives."
    # end





    # current_player = p1
    # puts "Here is your question #{current_player}: "
    # puts question.question
    # answer = gets.chomp
    # if question.check_answer
    #     puts "Correct #{current_player}!"
    #     current_player = p2
    # else
    #     puts "Sorry, that is incorrect #{current_player}.  You have lost a life.  You have #{p1_lives} left."
        



# while p1.lives > 0 && p2.lives > 0
    #run the loop