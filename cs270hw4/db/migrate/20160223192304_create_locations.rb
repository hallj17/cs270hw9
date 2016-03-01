class CreateLocations < ActiveRecord::Migration
  def change
    create_table :locations do |t|
      t.string :name
      t.string :description
      t.string :tag
      t.string :coordinates
      t.belongs_to :user
    end
  end
end
