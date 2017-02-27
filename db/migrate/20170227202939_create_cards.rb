class CreateCards < ActiveRecord::Migration[5.0]
  def change
    create_table :cards do |t|
      t.boolean :turned, default: false
      t.references :users, foreign_key: true

      t.timestamps
    end
  end
end
