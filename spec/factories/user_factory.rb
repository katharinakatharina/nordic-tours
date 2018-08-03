FactoryBot.define do


  factory :user do |user|
    sequence(:email) { |n| "user#{n}@example.com" }
    password "1234567890"
    first_name "Test"
    last_name "Example"
    admin false

      factory :admin do
        admin true
      end
  end

#  factory :admin, class: User do
#    email
#    password "qwertyuiop"
#    admin true
#    first_name "Admin"
#    last_name "User"
#  end
end
