# video upload controller
class VideoUploadsController < ApplicationController
  def new
    @video_upload = VideoUpload.new 
  end

  def create
    @video_upload = VideoUpload.new(title: params[:video][:title],
                                    description: params[:video][:description],
                                    file: params[:video][:file].try(:tempfile).try(:to_path))
    if @video_upload.save
      uploaded_video = @video_upload.upload!(current_user)

      if uploaded_video.failed?
        flash[:error] = 'There was an error while uploading your video...'
      else
        Video.create({link: "https://www.youtube.com/watch?v=#{uploaded_video.id}"})
        flash[:success] = 'Your video has been uploaded!'
      end
      redirect_to root_url
    else
      render :new
    end
  end
end
