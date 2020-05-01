require "test_helper"

class TweetTest < ActiveSupport::TestCase
  test "create a valid tweet" do
    tweet = build(:tweet)
    assert tweet.save, "Could not save valid tweet"
  end

  test "should only get tweets within the last day" do
    tweets = create_list(:tweet, rand(1..10))
    assert_equal tweets.count, Tweet.last_day.count, "Unable to retrieve tweets in range"

    future_date = Time.now + 25.hours
    travel_to future_date
    assert_equal 0, Tweet.last_day.count, "Retrieved tweets outside of a day"
  end
end
