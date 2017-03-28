@user = User.create(email: "test@test.com",  
										 password: "asdfasdf", 
										 password_confirmation:"asdfasdf",
										 first_name: "johnny", 
										 last_name: "walker",
										 phone: "7542044956")

puts "user created"


AdminUser.create(email: "admin@mail.com", 
								 password: "asdfasdf", 
								 password_confirmation:"asdfasdf",
								 first_name: "jolly", 
								 last_name: "rancher-admin",
								 phone: "7542044956")


puts "1 admin_user created"


100.times do |post|
	Post.create!(date: Date.today, rationale: "#{post} rationale content", user_id: @user.id, overtime_request: 2.5)
end
 puts "100 posts have been created"

100.times do |audit_log|
	AuditLog.create!(user_id: User.last.id, status: 0 , start_date: (Date.today - 6.days))
end

	puts "100 audit logs have been created"
 