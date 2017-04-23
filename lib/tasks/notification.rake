namespace :notification do
  desc "Send SMS notification to employees asking them to log if they have pending hours  or not"
  task sms: :environment do
    if Time.now.sunday?
      employees = Employee.all

      notification_message = "Please log into the employee management dashboard to document hours worked if applicable for last week: https://overtime-log.herokuapp.com"
  	# send message with instructions and link to log time



  	  employees.each do |employee|
        AuditLog.create!(user_id: employee.id)
  		  SmsTool.send_sms(number: employee.phone ,message: notification_message)
  	 end
    end
  end

  desc "Send mail notification to managers (admin users) each day to inform of pending hours request"
  task manager_email: :environment do

    submitted_posts = Post.submitted
    admin_users = AdminUser.all 

    if submitted_posts.count > 0
      admin_users.each do |admin|
        ManagerMailer.email(admin).deliver_later
        end
      end
    end

end
