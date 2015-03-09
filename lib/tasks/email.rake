namespace :email do
  desc "TODO"
  task :reminders => :environment do
  	puts "!!!!!! email reminders !!!!!!!!!"

	@people = Person.first

	ApplicationController.new.render_to_string(
	  :template => 'pledge_reminder_mailer/reminder_email',
	  :locals => { :@people => @people }
	)

  end

end
