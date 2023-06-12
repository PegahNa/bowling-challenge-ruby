class Frame
    attr_reader :ball_scores, :bonus_score, :strike, :spare
  
    def initialize
      @ball_scores = []
      @bonus_score = 0
      @strike = false
      @spare = false
    end
  
    def roll(pins)
        @ball_scores << pins
        update_bonus_score
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

    def update_bonus_score
        if is_strike? || is_spare?
          @bonus_score += @ball_scores.last
        end
      end
  
    def total_score
      score + bonus_score
    end
  end