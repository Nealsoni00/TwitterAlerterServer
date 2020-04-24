class TwitterMonitorJob < ApplicationJob
  queue_as :default

  # TODO: In a production project, move to a secret file
  # (Regenerate the keys when moving to production)
  TWITTER_API_KEY = "RtnMLvHQUf7JzSxqxucDsqUlu"
  TWITTER_API_SECRET = "Dd63Iu0Ox8TJ4uMMUD9vht9yQHFdH9584GERwEfLFna9jGgrb4"

  TWITTER_ACCESS_TOKEN = "1222968141036367872-GKPt0Zd9IOahMc8m74jrGCG0fIIs74"
  TWITTER_TOKEN_SECRET = "mr6w53dprk4QfgKjdlsprQPlGBUOeKv0ySlbj6FHWmDSZ"

  def perform
    client = Twitter::Streaming::Client.new do |config|
      config.consumer_key = TWITTER_API_KEY
      config.consumer_secret = TWITTER_API_SECRET
      config.access_token = TWITTER_ACCESS_TOKEN
      config.access_token_secret = TWITTER_TOKEN_SECRET
    end

    client.filter({locations: "-122.75,36.8,-121.75,37.8"}) do |tweet|
      Tweet.create(text: tweet.text,
                   username: tweet.user.name,
                   handle: tweet.user.screen_name,
                   photo: tweet.user.profile_image_uri,
                   likes: tweet.favorite_count, 
                   retweets: tweet.retweet_count,
                   post_time: tweet.created_at)
    end
  end
end
