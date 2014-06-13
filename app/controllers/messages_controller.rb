class MessagesController < ApplicationController
  def index
    account_sid = Rails.application.secrets.twilio_sid
    auth_token = Rails.application.secrets.twilio_token
    puts account_sid
    puts auth_token
    @client = Twilio::REST::Client.new account_sid, auth_token
    @sms_messages = []
    # Loop over messages and print out a property for each one
    @client.account.messages.list.each do |sms|
      @sms_messages << sms.body unless twilio_dummy_message sms.body
    end
  end
  
  private
  
  def twilio_dummy_message msg
    msg == "Thanks for the message. Configure your number's SMS URL to change this message.Reply HELP for help.Reply STOP to unsubscribe.Msg&Data rates may apply."
  end
end
