class CreateSongs < ActiveRecord::Migration
  def change
    create_table :songs do |t|
      t.string :name
      t.string :gener
      t.string :description
      t.float :score

      t.timestamps
    end
  end
end
