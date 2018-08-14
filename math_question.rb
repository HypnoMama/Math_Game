class MathQuestion
    attr_reader :question, :answer

    def initialize()
        @question = create_question
        @answer = eval(@question)
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
    end

end
