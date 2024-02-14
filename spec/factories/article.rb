FactoryBot.define do
  factory :article do
    title { 'MyString' }
    content { 'Rich text content' }
    association :user, factory: :admin
  end
end