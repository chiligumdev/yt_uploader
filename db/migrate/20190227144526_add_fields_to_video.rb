class AddFieldsToVideo < ActiveRecord::Migration[5.1]
  def change
    add_column :videos, :link, :string
    add_column :videos, :published_at, :datetime
    add_column :videos, :likes, :integer
    add_column :videos, :deslikes, :integer
  end
end
