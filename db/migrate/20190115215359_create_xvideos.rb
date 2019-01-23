class CreateXvideos < ActiveRecord::Migration[5.2]
  def change
    create_table :xvideos do |t|
      t.string :url
      t.string :name
      t.string :duration
      t.string :img
      t.string :iframe
      t.string :tag
      t.string :number
      t.string :category

      t.timestamps
    end
  end
end
