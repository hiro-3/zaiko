class CreateTopics < ActiveRecord::Migration[5.2]
  def change
    create_table :topics do |t|
      t.integer :user_id
      t.string :time
      t.string :car_name
      t.string :car_type
      t.string :process
      t.string :worker
      t.string :parts
      t.string :images
      t.string :subject
      t.string :shop_name
      t.string :man_hours
      t.string :check
      t.text :description
      t.date :accrual_date
      
      t.timestamps
    end
  end
end
