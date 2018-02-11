@user = User.create(
    email: 'test@test.com',
    password: 'qwerty',
    first_name: 'John',
    last_name: 'Snow'
)

puts "1 user created"

AdminUser.create(
    email: 'admin@test.com',
    password: 'qwerty',
    first_name: 'Admin',
    last_name: 'Name'
)

puts "1 AdminUser created"

100.times do |post|
  Post.create!(date: Date.today, rationale: "#{post} rationale content", user_id: @user.id, overtime_request: 3.5)
end

puts "100 Posts have been created"