FactoryBot.define do
  sequence :email do |n|
    "test#{n}@example.com"
  end

  factory :user do
    first_name 'John'
    last_name 'Snow'
    email {generate :email }
    password 'qwerty'
    phone '5555555555'
  end

  factory :admin_user, class: 'AdminUser' do
    first_name 'Admin'
    last_name 'User'
    email {generate :email }
    password 'qwerty'
    phone '5555555555'
  end

  factory :non_authorized_user, class: 'User' do
    first_name 'Non'
    last_name 'Authorized'
    email {generate :email }
    password 'qwerty'
    phone '5555555555'
  end
end
