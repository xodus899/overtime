namespace :notification do
  desc "Send SMS notification to employees asking them to log if they have pending hours  or not"
  task sms: :environment do
      if not_the_weekend
        employees = Employee.all
        notification_message = "Please log into the employee time management dashboard to document hours worked for yesterday if applicable for last week: https://overtime-log.herokuapp.com"
    	# send message with instructions and link to log time

    	  employees.each do |employee|
          AuditLog.create!(user_id: employee.id)
    		  SmsTool.send_sms(number: employee.phone ,message: notification_message) if Employee.submitted_yesterday(employee).empty?
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
  private

  def not_the_weekend
    !Time.now.sunday? || !Time.now.saturday?
  end


end
