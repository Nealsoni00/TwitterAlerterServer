FactoryBot.define do
  factory :tweet do
    text { Faker::Lorem.paragraph(sentence_count: 2) }
    username { Faker::Name.name }
  end
end