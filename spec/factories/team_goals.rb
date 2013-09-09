# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :team_goal do
    title "MyString"
    description "MyString"
    end_time "2013-09-09 23:28:30"
    start_time "2013-09-09 23:28:30"
    weight 1
    team nil
    status "MyString"
    father 1
  end
end
