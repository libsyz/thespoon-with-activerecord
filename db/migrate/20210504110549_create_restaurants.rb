class CreateRestaurants < ActiveRecord::Migration[6.1]
  def change
    create_table :restaurants do |t|
      t.string :name
      t.float :rating
      t.integer :review_count
      t.text :categories
      t.integer :distance_meters
      t.integer :delivery_price_cents
      t.integer :min_delivery_time
      t.integer :max_delivery_time
      t.string :image_url
      t.timestamps
    end
  end
end
