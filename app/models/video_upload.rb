class VideoUpload < ActiveType::Record[Video]
  validates :file, presence: true
  validates :title, presence: true

  def upload!(user)
    account = Yt::Account.new access_token: user.token
    account.upload_video self.file, title: self.title, description: self.description
  end
end
