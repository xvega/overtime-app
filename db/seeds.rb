@user = User.create(
    email: 'test@test.com',
    password: 'qwerty',
    first_name: 'John',
    last_name: 'Snow'
)

puts "1 user created"

100.times do |post|
  Post.create!(date: Date.today, rationale: "#{post} rationale content", user_id: @user.id)
end

puts "100 Posts have been created"