# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :library do
    github_repo "cfahelloworld"
    language_list "Ruby"
    description "Tupac wrapping to an API"
  end
end
