class AddCommuPosts < ActiveRecord::Migration[6.0]
  def change
    add_column :commu_posts, :protect, :integer
  end
end
