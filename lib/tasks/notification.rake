namespace :notification do
  desc "Send SMS notification to employees asking them to log if they had overtime or not"
  task sms: :environment do
  	p "I'm in a rake task"
  end

end
