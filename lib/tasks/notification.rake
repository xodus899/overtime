namespace :notification do
  desc "Send SMS notification to employees asking them to log if they had overtime or not"
  task sms: :environment do
    if Time.now.sunday?
      employees = Employee.all

      notification_message = "Please log into the overtime management dashboard to document overtime if applicable for last week: https://overtime-log.herokuapp.com"
  	# send message with instructions and link to log time



  	  employee.all.each do |user|
  		  SmsTool.send_sms(number: employee.phone ,message: notification_message)
  	 end
    end
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
