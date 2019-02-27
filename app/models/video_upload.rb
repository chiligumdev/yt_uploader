# video uploads model
class VideoUpload < ActiveType::Object
  attribute :file, :string
  attribute :title, :string
  attribute :description, :string

  validates :file, presence: true
  validades :title, presence: true

  def upload(user)
    account = Yt::Account.new access_token: user.token
    account.upload_video self.file, title: self.title, description: self.description
  end
end