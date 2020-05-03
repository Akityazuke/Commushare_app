class CreateUserNotices < ActiveRecord::Migration[6.0]
  def change
    create_table :user_notices do |t|
      t.integer :visitor_id
      t.integer :visited_id
      t.integer :post_id
      t.integer :checked

      t.timestamps
    end
  end
end
