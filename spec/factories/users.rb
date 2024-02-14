FactoryBot.define do
  factory :user do
    name { 'User' }
    sequence(:email) { |n| "user#{n}@example.com" }
    password { 'MyString' }
    password_confirmation { 'MyString' }
    admin { false }

    factory :admin do
      name { 'Admin' }
      admin { true }
    end
  end
end