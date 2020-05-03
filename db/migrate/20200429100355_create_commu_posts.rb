class CreateCommuPosts < ActiveRecord::Migration[6.0]
  def change
    create_table :commu_posts do |t|
      t.string :content
      t.string :image_name
      t.string :user

      t.timestamps
    end
  end
end
