class PledgeMailer < ApplicationMailer
  default from:"hello@septo.org" 

  def thank_you(user) 
    @user = user 
    mail(to:@user.email, subject:"Thank You For Contributing to SEPTO")
  end 

end
