# video upload controller
class VideoUploadsController < ApplicationController
  def new
    @video = VideoUpload.new 
  end

  def create
  end
end