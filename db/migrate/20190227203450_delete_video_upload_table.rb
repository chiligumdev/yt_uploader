class DeleteVideoUploadTable < ActiveRecord::Migration[5.1]
  def change
    drop_table :video_uploads
  end
end
