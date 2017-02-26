@user = User.create(email: "test@test.com", password: "asdfasdf", password_confirmation:"asdfasdf",first_name: "johnny", last_name: "walker")
@user1 = User.create(email: "testy@test.com", password: "asdfasdf", password_confirmation:"asdfasdf",first_name: "white", last_name: "wine" )
puts "user created"
100.times do |post|
	Post.create!(date: Date.today, rationale: "#{post} rationale content", user_id: @user.id)
end
 puts "100 posts have been created"

 