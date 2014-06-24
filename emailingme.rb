require 'mailgun'

class Email

  Mailgun.configure do |config|
  config.api_key = 'key-0adwu1qqkvew8h2-unmvynmqdjc-2dv1'
  config.domain  = 'sandbox644864e1e7ea479586422a0b6e9b390a.mailgun.org'
  end

  def send   
    @mailgun = Mailgun(:api_key => 'key-0adwu1qqkvew8h2-unmvynmqdjc-2dv1')

    parameters = {
    :to => "eladouceur@mail.brearley.org",
    :subject => "testing",
    :text => "testing",
    :from => "postmaster@sandbox644864e1e7ea479586422a0b6e9b390a.mailgun.org"
    }
    @mailgun.messages.send_email(parameters)
  end

end

my_email = Email.new

my_email.send