class CreateTargets < ActiveRecord::Migration[6.0]
  def change
    create_table :targets do |t|
      t.string     :week,   null: false
      t.string     :day,    null: false
      t.string     :free,   null: false
      t.integer    :money,  null: false
      t.references :user,   null: false, foreign_key: true
      t.timestamps
    end
  end
end
