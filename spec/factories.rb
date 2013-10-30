FactoryGirl.define do
  factory :user do
    sequence(:name)   { |n| "Person #{n}" }
    sequence(:email)  { |n| "person_#{n}@example.com" }
    password              "foobar"
    password_confirmation "foobar"

    factory :admin do
      admin true
    end
  end

  factory :article do
    sequence(:name)     { |n| "Article #{n}" }
    sequence(:journal)  { |n| "Journal #{n}" }
  end
end
