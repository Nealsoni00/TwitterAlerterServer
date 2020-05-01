Rails.application.routes.draw do
  get "start" => "twitter_monitor#start"
  get "tweets" => "twitter_monitor#get_tweets"
end
