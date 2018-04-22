class AddCodabasupToAthletes < ActiveRecord::Migration[5.1]
  def change
    add_column :athletes, :codabasup, :integer
  end
end
