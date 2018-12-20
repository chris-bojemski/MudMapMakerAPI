class CreateRooms < ActiveRecord::Migration[5.2]
  def change
    create_table :rooms do |t|
      t.references :north, foreign_key: true, foreign_key: {to_table: :rooms}
      t.references :east, foreign_key: true, foreign_key: {to_table: :rooms}
      t.references :south, foreign_key: true, foreign_key: {to_table: :rooms}
      t.references :west, foreign_key: true, foreign_key: {to_table: :rooms}
      # t.references :target_fish, foreign_key: {to_table: :fishes}
      t.string :description
      t.boolean :contains_grid
      t.string :name

      t.timestamps
    end
  end
end
