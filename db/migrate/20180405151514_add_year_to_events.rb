class AddYearToEvents < ActiveRecord::Migration[5.1]
  def change
    add_column :events, :year, :integer
  end
end
