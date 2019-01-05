class CreateRooms < ActiveRecord::Migration[5.2]
  def change
    create_table :rooms do |t|
      t.references :north, foreign_key: true, foreign_key: {to_table: :rooms}, on_delete: :cascade
      t.references :east, foreign_key: true, foreign_key: {to_table: :rooms}, on_delete: :cascade
      t.references :south, foreign_key: true, foreign_key: {to_table: :rooms}, on_delete: :cascade
      t.references :west, foreign_key: true, foreign_key: {to_table: :rooms}, on_delete: :cascade
      t.references :area
      t.string :name
      t.string :description

      t.timestamps
    end
  end
end
