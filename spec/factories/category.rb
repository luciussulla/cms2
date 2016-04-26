FactoryGirl.define do
  
  factory :category do
    sequence :name do |n| # helper factory girls 
      "name-#{n}"
    end   
    description Faker::Lorem.sentence
  end
  
  factory :post do 
     title Faker::Lorem.sentence(3)
     body Faker::Lorem.sentence
     association :category 
  end
  
end
