module ApplicationHelper
  define_method :percent_of_vote do |left, right|
    total = ( left.to_i + right.to_i ).to_f
    if total > 0
      left_percent = left.to_f / total
      left_percent = ( left_percent * 100 ).to_i
      right_percent = right.to_f / total
      right_percent = ( right_percent * 100 ).to_i
      return [ left_percent, right_percent]
    else
      return [0,0]
    end
  end
end
