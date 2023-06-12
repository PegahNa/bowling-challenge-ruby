class Frame
    attr_reader :ball_scores, :bonus_score, :strike, :spare
  
    def initialize
      @ball_scores = []
      @bonus_score = 0
      @strike = false
      @spare = false
    end
  
    def roll(pins)
        if @ball_scores.size >= 2
            raise RuntimeError, "Only two rolls allowed per frame"
        end
      @ball_scores << pins
    end
  
    def is_strike?
      @ball_scores.length == 1 && @ball_scores[0] == 10
    end
  
    def is_spare?
      @ball_scores.length == 2 && @ball_scores.sum == 10
    end
  
    def score
      @ball_scores.inject(:+)
    end
  
    def bonus
      if is_strike?
        10
      elsif is_spare?
        10 - @ball_scores[0]
      else
        0
      end
    end
  
    def total_score
      score + bonus_score
    end
  end