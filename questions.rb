module MathGame
  class Questions
    attr_accessor :num1, :num2, :response

    def initialize
      @num1 = rand(1..20)
      @num2 = rand(1..20)
    end

    def ask_question
      puts "what is #{@num1} + #{@num2}?"
      response = gets.chomp.to_i

      if response == (@num1 + @num2)
        true
      else
        false
      end
    end
  end
end
