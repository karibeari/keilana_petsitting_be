class AddDetailsToEvents < ActiveRecord::Migration[5.2]
  def change
    add_column :events, :email, :string
    add_column :events, :pet_type, :string
    add_column :events, :phone, :integer
    add_column :events, :confirmed, :boolean
  end
end
