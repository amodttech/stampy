class CreateStamps < ActiveRecord::Migration[7.0]
  def change
    create_table :stamps do |t|
      t.string :name
      t.text :description
      t.integer :year
      t.string :country
      t.string :subject
      t.datetime :acquired
      t.boolean :cancelled
      t.references :collection, null: false, foreign_key: true

      t.timestamps
    end
  end
end
