# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :menu_item do
    name "Gusteau's"
    description "Exquisite French cuisine"
    price_in_cents 199999
  end
end
