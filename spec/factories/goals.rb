# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :goal do
    title "MyString"
    description "MyString"
    start_time "2013-06-03 10:22:18"
    end_time "2013-06-03 10:22:18"
    weight 1
    user nil
  end
end
