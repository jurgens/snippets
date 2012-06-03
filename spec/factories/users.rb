FactoryGirl.define do
  factory :user do
    sequence(:username)   { |n| "user_#{n}"}
    email                 { |o| "#{o.username}@example.org" }
    password              'password'
    password_confirmation 'password'
  end
end