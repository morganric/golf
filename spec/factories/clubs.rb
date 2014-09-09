# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :club do
    name "MyString"
    about "MyText"
    banner "MyString"
    logo "MyString"
    address "MyString"
    zip_code "MyString"
    country "MyString"
    phone_number "MyString"
    latitude 1.5
    longitude 1.5
  end
end
