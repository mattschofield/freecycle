require 'faker'

FactoryGirl.define do
  factory :user do |f|
    f.first_name { Faker::Name.first_name }
    f.last_name { Faker::Name.last_name }
    f.email { Faker::Internet.email }
    f.password "super-secure"
    f.password_confirmation "super-secure"
  end

  factory :request do
    title "I need a couch!"
    description "I need a really nice couch."
  end

  factory :offer do
    title "I have a couch!"
    description "I need to get rid of this really nice couch."
  end
end
