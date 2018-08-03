FactoryBot.define do



   factory :product do |product|
    sequence(:name) {|n| "TestProduct#{n}"}
    description "Test"
    price 1.22
  end

end
