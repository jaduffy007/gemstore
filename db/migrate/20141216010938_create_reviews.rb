class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
      t.integer :stars
      t.string :body
      t.string :author
      t.integer :product_id
      t.timestamps
    end
  end
end
