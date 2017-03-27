@user = User.create(email: "test@test.com", password: "asdfasdf", password_confirmation:"asdfasdf",first_name: "johnny", last_name: "walker")
@user1 = User.create(email: "testy@test.com", password: "asdfasdf", password_confirmation:"asdfasdf",first_name: "white", last_name: "wine" )
@user2 = User.create(email: "test1@test.com", password: "asdfasdf", password_confirmation:"asdfasdf",first_name: "120", last_name: "ipa")
@user3 = User.create(email: "test2@test.com", password: "asdfasdf", password_confirmation:"asdfasdf",first_name: "dog", last_name: "fishhead")
@user4 = User.create(email: "test3@test.com", password: "asdfasdf", password_confirmation:"asdfasdf",first_name: "whiskey", last_name: "gingerale")

puts "user created"


AdminUser.create(email: "admin@mail.com", password: "asdfasdf", password_confirmation:"asdfasdf",first_name: "jolly", last_name: "rancher-admin")
puts "1 admin_user created"


100.times do |post|
	Post.create!(date: Date.today, rationale: "#{post} rationale content", user_id: @user.id, overtime_request: 2.5)
end
 puts "100 posts have been created"

 