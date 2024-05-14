namespace :cron_jobs do
  desc "Setup cron jobs"
  task setup: :environment do
    # Define the schedule using Whenever gem
    schedule_file = File.expand_path('../../config/schedule.rb', __FILE__)
    whenever_command = "whenever --update-crontab"
    
    # Execute the Whenever command
    system(whenever_command)
    
    # Output success message
    puts "Cron jobs setup complete!"
  end
end