class Game
  attr_accessor :current_frame, :current_ball, :scorecard

  def initialize
    @current_frame = 1
    @current_ball = 1
    @scorecard = ScoreCard.new
  end

  def get_score(frame)
    score = 0
    for ball in frame.ball_scores
      score += ball
    end
    return score
  end

  def get_next_frame_score(frame)
    if frame.is_strike?
      return 10 + get_score(frame.next_frame)
    elsif frame.is_spare?
      return 10 + frame.next_frame.ball_scores[0]
    else
      return frame.ball_scores.inject(:+)
    end
  end

  def play
    while current_frame < 10
      get_input
      move_to_next_ball
    end

    scorecard.update_pending_bonuses(frames, current_frame)
    print(scorecard.final_score)
  end

  def get_input
    while true
      ball_score = gets.chomp
      if ball_score.match(/^\d+$/)
        break
      end
    end
    self.frames[current_frame].roll(ball_score.to_i)
  end

  def move_to_next_ball
    self.current_ball += 1
    if self.current_ball == 2
      self.current_ball = 0
      self.current_frame += 1
    end
  end
end