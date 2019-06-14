class CreateCoins < ActiveRecord::Migration[5.2]
  def change
    create_table :coins do |t|
      t.belongs_to :user, foreign_key: true
      t.belongs_to :pressing, foreign_key: true

      t.timestamps
    end
  end
end
