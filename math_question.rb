class MathQuestion
    attr_reader :check_answer, :question

    def initialize()
        @question = question
    end

    def first_num
        first_num = rand(1...21)
    end

    def second_num
        second_num = rand(1...first_num)
    end

    def operator 
        operators = ['/', '+', '-', '*']
        operator = operators[rand(3)]
        operator.to_sym
    end

    def create_question
        question = "#{first_num} #{operator} #{second_num}"
        # puts "What is the answer to: #{question}"
    end

    def correct_answer(question)
        # question = "#{first} #{operator} #{second}"
        eval(question)
        
    end

    def check_answer(answer)
        answer == self.correct_answer
    end


end

# question needs to be how it is.  saved as a variable in game,
# then check the answer by passing it to check_answer or correct answer to eval it

# a_question = MathQuestion.new()
# puts a_question.first_num
# puts a_question.second_num
# question =  a_question.create_question
# puts question
# answer = a_question.correct_answer(question)
# puts answer
# puts a_question.check_answer(answer)