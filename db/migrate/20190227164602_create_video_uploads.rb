class CreateVideoUploads < ActiveRecord::Migration[5.1]
  def change
    create_table :video_uploads do |t|

      t.timestamps
    end
  end
end
