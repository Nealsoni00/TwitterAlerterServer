class Tweet < ApplicationRecord
  class << self
    def last_day
      delta_time = Time.current - 24.hours
      Tweet.where(created_at: delta_time..Time.current)
        .order("updated_at DESC")
    end
  end
end
