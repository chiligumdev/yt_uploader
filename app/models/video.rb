class Video < ApplicationRecord
  belongs_to :user

  attr_accessor :file

  YT_LINK_FORMAT = /\A.*(youtu.be\/|v\/|u\/\w\/|embed\/|watch\?v=|\&v=)([^#\&\?]*).*/i

  #validates :link, presence: true, format: YT_LINK_FORMAT

  def upload(user)
    account = Yt::Account.new access_token: user.token
    account.upload_video self.file, title: self.title, description: self.description
  end
end
