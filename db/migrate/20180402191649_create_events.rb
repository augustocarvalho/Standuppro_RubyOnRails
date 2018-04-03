class CreateEvents < ActiveRecord::Migration[5.1]
  def change
    create_table :events do |t|
      t.string :title
      t.string :local
      t.date :date

      t.timestamps
    end
  end
end
