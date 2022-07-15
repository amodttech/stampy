class CreateStamps < ActiveRecord::Migration[7.0]
  def change
    create_table :stamps do |t|
      t.references :collection, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true
      t.string :title
      t.integer :year
      t.string :country
      t.string :subject
      t.text :description
      t.datetime :aquisition

      t.timestamps
    end
  end
end
