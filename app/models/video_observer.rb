# video observer class
class VideoObserver < ActiveRecord::Observer
  def before_save(resource)
    video = YT::Video.new url: resource.link
    resource.uid = video.uid
    resource.title = video.title
    resource.likes = video.like_count
    resource.deslikes = video.deslikes_count
    resource.published_at = video.published_at
  rescue
    YT::Errors::NoItems
    resource.title = ''
  end
end