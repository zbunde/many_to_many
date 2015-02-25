class CreateCompanyReviews < ActiveRecord::Migration
  def change
    create_table :company_reviews do |t|
      t.string :title
      t.text :description
      t.integer :rating
      t.integer :user_id
      t.integer :company_id
    end
  end
end
