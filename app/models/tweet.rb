class Tweet < ApplicationRecord
  def last_day
    delta_time = Time.current - 24.hours
    where(created_at: delta_time..Time.current)
      .order("updated_at DESC")
  end
end
