class CreateReviews < ActiveRecord::Migration[5.2]
  def change
    create_table :reviews do |t|
      t.references :cinema, foreign_key: true
      t.string :content
      t.string :user_name
      t.integer :rating

      t.timestamps
    end
  end
end
