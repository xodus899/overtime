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

AuditLog.create!(user_id: @user.id, status: 0 , start_date: (Date.today - 6.days))
AuditLog.create!(user_id: @user.id, status: 0 , start_date: (Date.today - 13.days))
AuditLog.create!(user_id: @user.id, status: 0 , start_date: (Date.today - 20.days))

puts "3 audit logs have been created"


100.times do |post|
	Post.create!(date: Date.today, rationale: "#{post} XOXO pour-over food truck, slow-carb four dollar toast meh keytar banh mi hot chicken. Hell of umami narwhal hashtag, edison bulb normcore organic sartorial roof party DIY aesthetic fap mlkshk taxidermy cred. Photo booth mlkshk meditation distillery, succulents cred hella pork belly food truck. Keytar hashtag skateboard, occupy shabby chic post-ironic pour-over yr pickled edison bulb everyday carry vape fap chicharrones. Paleo kitsch chartreuse pickled, tattooed chicharrones distillery pabst hella hexagon gentrify vaporware. Knausgaard venmo letterpress, tumblr put a bird on it squid wayfarers shabby chic pork belly butcher lomo fashion axe semiotics. Tattooed succulents poutine 3 wolf moon.", user_id: @user.id, overtime_request: 2.5)
end
puts "100 posts have been created"


 