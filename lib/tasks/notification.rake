namespace :notification do
  desc 'sends sms notification to employees asking them to log if they had overtime or not'
  task sms: :environment do
    puts 'im in a rails task'
  end

end
