# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :attendee_comment do
    attendee nil
    event nil
    message "MyText"
  end
end
