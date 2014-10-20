# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :event do
    title "MyString"
    description "MyText"
    date "2014-10-19 16:09:54"
    location "MyString"
  end
end
