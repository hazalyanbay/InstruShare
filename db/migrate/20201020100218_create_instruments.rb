class CreateInstruments < ActiveRecord::Migration[6.0]
  def change
    create_table :instruments do |t|
      t.string :description
      t.integer :rate
      t.string :style
      t.string :location
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
