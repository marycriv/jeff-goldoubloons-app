class CreateGoldbuds < ActiveRecord::Migration[5.2]
  def change
    create_table :goldbuds do |t|
      t.integer :goldbuder_id
      t.integer :goldbudee_id

      t.timestamps
    end
  end
end
