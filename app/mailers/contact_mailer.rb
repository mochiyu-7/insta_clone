class ContactMailer < ApplicationMailer

  def send_mail(feed)
      @user = User.find(feed.user.id)
      mail to: @user.email, subject: "画像投稿の確認メール"
  end

end
