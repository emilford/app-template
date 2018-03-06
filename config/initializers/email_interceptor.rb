class EmailInterceptor
  def self.delivering_email(message)
    recipients = [message.to, message.cc, message.bcc].compact.flatten

    whitelisted_emails = recipients.select { |email| whitelisted?(email) }
    whitelisted_emails << ENV["DEFAULT_EMAIL"] if whitelisted_emails.empty?

    message.subject << " [Recipients: #{recipients.join(", ")}]"
    message.to = whitelisted_emails
    message.cc = message.bcc = []
  end

  def self.whitelisted?(email)
    email[/@capitalcraft\.co$/]
  end
end

ActionMailer::Base.register_interceptor(EmailInterceptor) if Rails.env.staging?
