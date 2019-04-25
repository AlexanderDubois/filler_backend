class CreatePractitioners < ActiveRecord::Migration[5.2]
  def change
    create_table :practitioners do |t|
      t.string :name
      t.string :address
      t.string :profile_img

      t.timestamps
    end
  end
end
