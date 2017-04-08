namespace :notification do
  desc "Send SMS notification to employees asking them to log if they had overtime or not"
  task sms: :environment do
  	# schedule to run sunday at 5pm
  	# iterate over all employees
  	# skip admin users
  	# send message with instructions and link to log time
  	# User.all.each do |user|
  	# 	SmsTool.send_sms()
  	# end
  end

  desc "Send mail notification to managers (admin users) each day to inform of pending overtime requests"
  task manager_email: :environment do

    # schedule to run daily
    # iterate over pending requests
    # check for requests
    # iterate over admin users
    # send email to each admin
    submitted_posts = Post.submitted
    admin_users = AdminUser.all 

    if submitted_posts.count > 0
      admin_users.each do |admin|
        ManagerMailer.email(admin).deliver_later
        end
      end
    end

end
