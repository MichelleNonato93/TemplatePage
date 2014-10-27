class ContactMailer < ActionMailer::Base
  default :from => "michelle.nonato@gmail.com"

  def thank_you_email(contact)
    @contact = contact
    mail(:to => @contact.email, :subject => "Contact Successfully Submitted")
  end
end
