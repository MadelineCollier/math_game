module MathGame

  class Turn

    def just_one_turn
      po = MathGame::Players.new("Player 1")
      pt = MathGame::Players.new("Player 2")
      i = 0
      while (po.lives > 0 && pt.lives > 0) do
        if i.even?
          active_player = po
          active_player_name = po.name
        else
          active_player = pt
          active_player_name = pt.name
        end
        puts "---NEW TURN---"
        puts "#{active_player_name}'s turn"
        question = MathGame::Questions.new
        if question.ask_question == true
          puts "correct! the answer is #{question.num1 + question.num2}"
          i += 1
        else
          puts "You lose a life!"
          active_player.lives -= 1
          i += 1
        end
        puts "P1: #{po.lives}/3 vs P2: #{pt.lives}/3"
      end
      if po.lives > 0
        puts "#{po.name} winswith a score of !"
      else
        puts "#{pt.name} wins with a score of !"
       end

      puts "---GAME OVER--- \nGood bye!"
    end
  end
end