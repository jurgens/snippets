FactoryGirl.define do
  factory :snippet do
    user
    board
    name      { Faker::Lorem.sentence 4 }
    body      { Faker::Lorem.paragraph 5 }
  end
end