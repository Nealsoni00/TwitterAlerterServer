class TwitterMonitorController < ApplicationController
  # TODO: In a real environment, this would be queued to Sidekiq
  def start
    TwitterMonitorJob.perform_now
  end

  # Returns the tweets from the last day in the DB
  def get_tweets

  end
end
