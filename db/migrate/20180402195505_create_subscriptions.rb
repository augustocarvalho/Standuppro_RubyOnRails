class CreateSubscriptions < ActiveRecord::Migration[5.1]
  def change
    create_table :subscriptions do |t|
      t.references :athlete, foreign_key: true
      t.references :category, foreign_key: true
      t.references :event, foreign_key: true
      t.integer :number
      t.time :tempo

      t.timestamps
    end
  end
end
