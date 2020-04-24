Rails.application.routes.draw do
  get "start" => "twitter_monitor#start"
end
