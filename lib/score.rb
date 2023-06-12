class Score
  def initialize(frames)
    @frames = frames
  end

  def calculate_score
    score = 0
    for frame in @frames
      score += frame.score
    end
    return score
  end

  def show_score
    for frame in @frames
      puts frame.score
    end
  end

  def get_pending_bonus(frame)
    if frame.is_strike?
      return 10
    elsif frame.is_spare?
      return 10 - frame.ball_scores[0]
    end
    return 0
  end

  def update_pending_bonuses(frames, current_frame)
    for frame in frames[current_frame..-1]
      frame.bonus_score += get_pending_bonus(frame)
    end
  end

  def final_score
    calculate_score + get_pending_bonuses(@frames, @frames.length - 1)
  end
end