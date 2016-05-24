class CreateRelations < ActiveRecord::Migration
  def change
    create_table :relations do |t|
      t.references :passenger, index: true, foreign_key: true
      t.references :booking, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
