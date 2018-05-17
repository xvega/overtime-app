@user = User.create(
  email: 'test@test.com',
  password: 'qwerty',
  first_name: 'John',
  last_name: 'Snow',
  phone: '2017629891'
)

puts "1 user created"

AdminUser.create(
  email: 'admin@test.com',
  password: 'qwerty',
  first_name: 'Admin',
  last_name: 'Name',
  phone: '2017629891'
)

puts "1 AdminUser created"

100.times do |post|
  Post.create!(date: Date.today, rationale: "#{post} rationale content", user_id: @user.id, overtime_request: 3.5)
end

puts "100 Posts have been created"


100.times do |audit_log|
  AuditLog.create!(user: User.last.id, status: 0, start_date: (Date.today - 6.days))
end

puts "100 audit logs have been created"