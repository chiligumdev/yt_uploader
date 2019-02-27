# video uploads model
class VideoUpload < ActiveType::Object
  attribute :file, :string
  attribute :title, :string
  attribute :description, :string

  validates :file, presence: true
  validades :title, presence: true
end