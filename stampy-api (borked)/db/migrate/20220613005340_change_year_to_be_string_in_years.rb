class ChangeYearToBeStringInYears < ActiveRecord::Migration[7.0]
  def change
    change_column :years, :year, :string
  end
end
