FactoryGirl.define do
  factory :user do
    username { Faker::Name.first_name }
    ip_address { Faker::Internet.ip_v4_address }
  end
end
