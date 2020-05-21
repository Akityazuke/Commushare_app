class ChangeImageToCommupost < ActiveRecord::Migration[6.0]
  def change
    remove_column :commu_posts, :image, :string

    add_column :commu_posts, :image_name, :string
  end
end
