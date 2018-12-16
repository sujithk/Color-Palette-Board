FactoryGirl.define do
  factory :palette do
    code { Faker::StarWars.character }
    row 1
    column 5
    user_id nil
  end
end
