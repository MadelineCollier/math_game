module MathGame
   class Players
    attr_accessor :lives, :name

    def initialize(name)
      @name = name
      @lives = 3
    end
  end

end
