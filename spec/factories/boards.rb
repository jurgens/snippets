FactoryGirl.define do
  factory :board do
    association       :owner, factory: :user
    sequence(:name)   {|n| "board_#{n}" }
  end
end