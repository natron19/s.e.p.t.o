class Pledge < ActiveRecord::Base
  belongs_to :user

  after_create :send_thank_you

  private

  def send_thank_you 
    PledgeMailer.thank_you(self.user).deliver
  end 
  
end
