class CreateInspects < ActiveRecord::Migration[5.2]
  def change
    create_table :inspects do |t|
      t.integer :user_id
      t.string :car_name
      t.string :name
      t.string :process
      t.string :worker
      t.string :parts
      t.string :images
      t.string :subject
      t.string :shop_name
      t.string :man_hours
      t.integer :check1
      t.text :description
      t.datetime :accrual_date

      t.timestamps
    end
  end
end