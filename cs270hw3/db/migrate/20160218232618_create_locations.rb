class CreateLocations < ActiveRecord::Migration
  def change
    create_table :locations do |t|
      t.string :tag
      t.string :name
      t.string :description
      t.string :coordinates
    end
  end
end
