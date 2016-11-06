class ContactMailer < ActionMailer::Base
  default to: 'sobegogo@gmail.com'
  
  def contact_email(name, email, body)
    @name = name
    @email = email
    @body = body
    
    mail(from: email, subject: 'YelpFun Contact Form Message')
  end
end