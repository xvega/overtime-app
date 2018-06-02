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
  Post.create!(date: Date.today, rationale: "#{post} Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod
    tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea
    commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint
    occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.", user_id: @user.id, overtime_request: 3.5)
end

puts "100 Posts have been created"


AuditLog.create!(user_id: @user.id, status: 0, start_date: (Date.today - 6.days))
AuditLog.create!(user_id: @user.id, status: 0, start_date: (Date.today - 13.days))
AuditLog.create!(user_id: @user.id, status: 0, start_date: (Date.today - 20.days))

puts "3 audit logs have been created"