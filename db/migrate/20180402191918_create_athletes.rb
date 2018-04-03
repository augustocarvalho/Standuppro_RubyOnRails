class CreateAthletes < ActiveRecord::Migration[5.1]
  def change
    create_table :athletes do |t|
      t.string :name
      t.date :dob
      t.string :email
      t.string :estado
      t.string :cidade

      t.timestamps
    end
  end
end
