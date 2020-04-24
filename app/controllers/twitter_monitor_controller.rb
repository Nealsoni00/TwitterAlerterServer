class TwitterMonitorController < ApplicationController
  # TODO: In a real environment, this would be queued to Sidekiq
  def start
    TwitterMonitorJob.perform_now
  end
end
