class ChangeImageToPosts < ActiveRecord::Migration[6.0]
  def change
    add_column :commu_posts, :image, :string

    remove_column :commu_posts, :image_name, :string
  end
end
