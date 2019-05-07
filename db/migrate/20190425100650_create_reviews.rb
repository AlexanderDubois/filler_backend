class CreateReviews < ActiveRecord::Migration[5.2]
  def change
    create_table :reviews do |t|
      t.string :title
      t.text :text
      t.integer :star
      t.string :before_image
      t.string :after_image
      t.integer :practitioner_id
      t.integer :user_id

      t.timestamps
    end
  end
end
