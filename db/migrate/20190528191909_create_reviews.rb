class CreateReviews < ActiveRecord::Migration[5.2]
  def change
    create_table :reviews do |t|
      t.text :content
      t.string :pet_name
      t.string :pet_type
      t.string :human_name

      t.timestamps
    end
  end
end
