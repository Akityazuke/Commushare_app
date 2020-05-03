class AddColumnCommuId < ActiveRecord::Migration[6.0]
  def change
    add_column :commu_posts, :commu_id, :integer
    add_column :commu_posts, :user_id, :integer

    remove_column :commu_posts, :user
  end
end
