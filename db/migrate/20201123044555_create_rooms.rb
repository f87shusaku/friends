class CreateRooms < ActiveRecord::Migration[6.0]
  def change
    create_table :rooms do |t|
      t.name  :string, null: false
      t.title :string, null: false
      t.timestamps
    end
  end
end
