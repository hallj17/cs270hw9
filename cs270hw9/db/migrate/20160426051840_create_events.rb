class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :name
      t.string :location
      t.datetime :start_data
      t.datetime :end_date

      t.timestamps null: false
    end
  end
end
