class Kasey::KaseMessageMailer < ApplicationMailer
  def message_email
    @kase = params[:kase]
    @message = params[:message]
    @message.body.body.attachables.each do |blob|
      attachments[blob.filename.to_s] = {
        mime_type: blob.content_type,
        content: blob.download
      }
    end
    mail(
      subject: "A message from Kasey! (Kase ##{@kase.token})",
      to: @kase.intake.email,
      from: "#{@kase.token}@#{Kasey.configuration.email_domain}",
    )
  end
end
