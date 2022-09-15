class ContactMailer < ApplicationMailer

  def send_mail(feed)
      @feed = feed
      @user = User.find(feed.user.id)
      mail to: @feed.user.email, subject: "画像投稿の確認メール"
  end

end
