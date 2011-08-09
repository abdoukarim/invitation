class InvitationMailer < ActionMailer::Base
  default :from => "from@example.com"

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.invitation_mailer.invite.subject
  #
  def invite(invitation)
    @invite = invitation
    mail :from => 'karim_155@hotmail.com',
         :to => invitation.email,
         :subject => "Welcome to Social ESMT"
  end
end
