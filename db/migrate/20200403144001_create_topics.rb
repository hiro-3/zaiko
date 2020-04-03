class CreateTopics < ActiveRecord::Migration[5.2]
  def change
    create_table :topics do |t|
      t.integer :user_id
      t.string :name
      t.string :images
      t.string :description
      t.string :parts
      t.datetime :created_at
      

      t.timestamps
    end
  end
end
