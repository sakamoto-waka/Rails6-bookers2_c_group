class ContactMailer < ApplicationMailer
  # groups controllerから呼び出され、更に値を受け取る
  def send_mail(mail_title, mail_content, group_users)
    @mail_title = mail_title
    @mail_content = mail_content
    mail bcc: group_users.pluck(:email), subject: mail_title
  end
end
