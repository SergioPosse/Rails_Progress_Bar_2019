class CreateBorrados < ActiveRecord::Migration[5.2]
  def change
    create_table :borrados do |t|
      t.integer :el_id

      t.timestamps
    end
  end
end
