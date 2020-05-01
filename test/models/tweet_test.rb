require "test_helper"

class TweetTest < ActiveSupport::TestCase
  text { Faker::Lorem.paragraph(sentence_count: 2) }
  username { Faker::Name.name }
end
