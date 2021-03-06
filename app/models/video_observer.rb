# video observer class
class VideoObserver < ActiveRecord::Observer
  def before_save(resource)
    video = Yt::Video.new url: resource.link
    resource.uid = video.id
    resource.title = video.title
    resource.likes = video.like_count
    resource.deslikes = video.dislike_count
    resource.published_at = video.published_at
  end
end