class CreateCommuIndices < ActiveRecord::Migration[6.0]
  def change
    create_table :commu_indices do |t|
      t.string :name
      t.string :content
      t.string :image_name

      t.timestamps
    end
  end
end
