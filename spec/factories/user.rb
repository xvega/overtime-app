FactoryGirl.define do
  sequence :email do |n|
    "test#{n}@example.com"
  end

  factory :user do
    first_name 'John'
    last_name 'Snow'
    email {generate :email }
    password 'qwerty'
  end

  factory :admin_user, class: 'AdminUser' do
    first_name 'Admin'
    last_name 'User'
    email {generate :email }
    password 'qwerty'
  end
end