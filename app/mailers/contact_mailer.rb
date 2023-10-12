class ContactMailer < ApplicationMailer
  # default from: 'saito1230125@gmail.com'
def send_mail(mail_title,mail_content,group_users,group)#メソッドに対して引数を設定
  @group = group
  @mail_title = mail_title
  @mail_content = mail_content
  mail bcc: group_users.pluck(:email), subject: mail_title
end
end
