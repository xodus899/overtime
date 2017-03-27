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

end
