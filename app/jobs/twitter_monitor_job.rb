class TwitterMonitorJob < ApplicationJob
  queue_as :default

  # TODO: In a production project, move to a secret file
  # (Regenerate the keys when moving to production)
  TWITTER_API_KEY = "RtnMLvHQUf7JzSxqxucDsqUlu"
  TWITTER_API_SECRET = "Dd63Iu0Ox8TJ4uMMUD9vht9yQHFdH9584GERwEfLFna9jGgrb4"

  TWITTER_ACCESS_TOKEN = "1222968141036367872-GKPt0Zd9IOahMc8m74jrGCG0fIIs74"
  TWITTER_TOKEN_SECRET = "mr6w53dprk4QfgKjdlsprQPlGBUOeKv0ySlbj6FHWmDSZ"

  def perform(*args)

  end
end
