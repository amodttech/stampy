class CreateStamps < ActiveRecord::Migration[7.0]
  def change
    create_table :stamps do |t|
      t.string :title
      t.references :country, null: false, foreign_key: true
      t.references :year, null: false, foreign_key: true
      t.references :subject, null: false, foreign_key: true
      t.text :description
      t.datetime :date_obtained

      t.timestamps
    end
  end
end
