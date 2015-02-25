class CreateProductReviews < ActiveRecord::Migration
  def change
    create_table :product_reviews do |t|
      t.string :title
      t.text :description
      t.integer :rating
      t.integer :user_id
      t.integer :product_id
    end
  end
end
