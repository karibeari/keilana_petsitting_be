class CreateEvents < ActiveRecord::Migration[5.2]
  def change
    create_table :events do |t|
      t.string :start
      t.string :end
      t.string :human_name
      t.string :pet_name

      t.timestamps
    end
  end
end
