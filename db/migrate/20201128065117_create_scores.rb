class CreateScores < ActiveRecord::Migration[6.0]
  def change
    create_table :scores do |t|
      t.string :title,           null: false
      t.integer :score,          null: false
      t.integer :ranking,         null: false
      t.references :user,         foreign_key: true
      t.timestamps
    end
  end
end
