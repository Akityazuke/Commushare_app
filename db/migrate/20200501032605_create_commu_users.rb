class CreateCommuUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :commu_users do |t|
      t.integer :commu_id
      t.integer :user_id

      t.timestamps
    end
  end
end
